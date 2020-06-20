package com.baghdadfocusit.webshop3d.service;

import com.baghdadfocusit.webshop3d.entities.Order;
import com.baghdadfocusit.webshop3d.entities.Product;
import com.baghdadfocusit.webshop3d.model.order.OrderProductResponseJsons;
import com.baghdadfocusit.webshop3d.model.order.OrderRequestJson;
import com.baghdadfocusit.webshop3d.model.order.OrderResponseJson;
import com.baghdadfocusit.webshop3d.repository.OrderRepository;
import com.baghdadfocusit.webshop3d.repository.ProductRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.mail.MessagingException;
import java.time.LocalDate;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.UUID;
import java.util.stream.Collectors;

@Service
public class OrderService {

    private static final Logger LOGGER = LoggerFactory.getLogger(OrderService.class);
    private final OrderRepository orderRepository;
    private final ProductRepository productRepository;
    private final EmailService emailService;

    public OrderService(final OrderRepository orderRepository,
                        final ProductRepository productRepository,
                        final EmailService emailService) {
        this.orderRepository = orderRepository;
        this.productRepository = productRepository;
        this.emailService = emailService;
    }

    public List<OrderResponseJson> getAllOrders() {
        final List<Order> orders = (List<Order>) orderRepository.findAll();

        return orders.stream().map(order -> {
            var orderProductResponseJsons = order.getProducts()
                    .stream()
                    .map(product -> new OrderProductResponseJsons(product.getName(), product.getPrice()))
                    .collect(Collectors.toList());

            return new OrderResponseJson(order.getCity(), order.getName(), order.getCustomerTrackId(),
                                         order.getTotalAmount(), order.isState() ? "Completed" : "In Progress",
                                         order.getCompanyName(), order.getDistrict(), order.getDistrict2(),
                                         order.getMobileNumber(), order.getEmail(), order.getNotes(),
                                         orderProductResponseJsons);
        }).collect(Collectors.toList());
    }

    /**
     * Create order by the customer.
     *
     * @param orderJson orderJson
     * @return order id. The customer can track his order by this ID
     */
    public OrderResponseJson creatOrder(final OrderRequestJson orderJson) {
        final Set<Product> products = orderJson.getOrderedProducts()
                .stream()
                .map(product -> productRepository.findById(UUID.fromString(product.getProductId()))
                        .orElseThrow(
                                () -> new IllegalArgumentException("No Products found when inserting a new Order")))
                .collect(Collectors.toSet());

        final double totalAmount = products.stream().mapToDouble(Product::getPrice).sum();
        final Random orderTrackId = new Random();
        final String format = String.format("3D-" + "%07d", orderTrackId.nextInt(10000000));
        final Order order = Order.builder()
                .createdAt(LocalDate.now())
                .totalAmount(totalAmount)
                .customerTrackId(format)
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
        try {
            emailService.sendEmailToAdminWithOrder(order);
        } catch (MessagingException e) {
            LOGGER.info("Email failed to be sent", e);
        }
        LOGGER.info("Order is successfully saved with category Id: {}", savedOrder.getId());
        return new OrderResponseJson(order.getCity(), order.getName(), order.getCustomerTrackId(),
                                     order.getTotalAmount(), null, order.getCompanyName(), order.getDistrict(),
                                     order.getDistrict2(), order.getMobileNumber(), order.getEmail(), order.getNotes(),
                                     order.getProducts()
                                             .stream()
                                             .map(p -> new OrderProductResponseJsons(p.getName(), p.getPrice()))
                                             .collect(Collectors.toList()));
    }
}
