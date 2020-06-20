package com.baghdadfocusit.webshop3d.controller.management;

import com.baghdadfocusit.webshop3d.model.order.OrderResponseJson;
import com.baghdadfocusit.webshop3d.service.OrderService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Order Management controller.
 */
@RestController
@RequestMapping("management/v1/orders")
public class OrderManagementController {

    private static final String HAS_ROLE_ADMIN_AND_EMPLOYEE = "hasAnyRole('ROLE_ADMIN, ROLE_EMPLOYEE')";

    private final OrderService orderService;

    public OrderManagementController(final OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping
    @PreAuthorize(HAS_ROLE_ADMIN_AND_EMPLOYEE)
    public List<OrderResponseJson> getAllCustomers() {
        return orderService.getAllOrders();
    }
}
