package com.baghdadfocusit.webshop3d.service;

import com.baghdadfocusit.webshop3d.entities.Order;
import com.baghdadfocusit.webshop3d.entities.Product;
import com.baghdadfocusit.webshop3d.model.OrderJson;
import com.baghdadfocusit.webshop3d.model.OrderResponseJson;
import com.baghdadfocusit.webshop3d.model.ProductResponseJson;
import com.baghdadfocusit.webshop3d.repository.OrderRepository;
import com.baghdadfocusit.webshop3d.repository.ProductRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
public class OrderService {

    private static final Logger LOGGER = LoggerFactory.getLogger(OrderService.class);

    private final OrderRepository orderRepository;
    private final ProductRepository productRepository;

    public OrderService(final OrderRepository orderRepository, final ProductRepository productRepository) {
        this.orderRepository = orderRepository;
        this.productRepository = productRepository;
    }

    public List<OrderResponseJson> getAllOrders() {
        final List<Order> orders = (List<Order>) orderRepository.findAll();

        return orders.stream().map(order -> {
            var productResponseJsons = order.getProducts()
                    .stream()
                    .map(product -> new ProductResponseJson(product.getName(), product.getPrice()))
                    .collect(Collectors.toList());
            return new OrderResponseJson(order.getName(), order.getCity(), order.getCompanyName(), order.getDistrict(),
                                         order.getDistrict2(), order.getMobileNumber(), order.getEmail(),
                                         order.getNotes(), productResponseJsons);
        }).collect(Collectors.toList());
    }

    /**
     * Create order by the customer.
     *
     * @param orderJson orderJson
     * @return order id. The customer can track his order by this ID
     */
    public String creatOrderAndGetOrderId(final OrderJson orderJson) {

        Set<Product> products = orderJson.getProductsIds()
                .stream()
                .map(productId -> productRepository.findById(UUID.fromString(productId))
                        .orElseThrow(
                                () -> new IllegalArgumentException("No Products found when inserting a new Order")))
                .collect(Collectors.toSet());

        final Order order = Order.builder()
                .createdAt(LocalDate.now())
                .customerTrackId(String.valueOf(System.currentTimeMillis()))
                .name(orderJson.getName())
                .city(orderJson.getCity())
                .district(orderJson.getDistrict())
                .district2(orderJson.getDistrict2())
                .email(orderJson.getEmail())
                .mobileNumber(orderJson.getMobileNumber())
                .notes(orderJson.getNotes())
                .companyName(orderJson.getCompanyName())
                .products(products)
                .build();
        final var savedOrder = orderRepository.save(order);
        LOGGER.info("Order is saved with category Id: {}", savedOrder.getId());
        return String.valueOf(savedOrder.getCustomerTrackId());
    }
}
