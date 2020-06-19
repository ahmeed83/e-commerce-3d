package com.baghdadfocusit.webshop3d.controller;

import com.baghdadfocusit.webshop3d.model.OrderJson;
import com.baghdadfocusit.webshop3d.model.OrderResponseJson;
import com.baghdadfocusit.webshop3d.service.OrderService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Order controller.
 */
@RestController
@RequestMapping("resources/orders")
public class OrderController {

    private final OrderService orderService;

    public OrderController(final OrderService orderService) {
        this.orderService = orderService;
    }

    @PostMapping("/add-order")
    public ResponseEntity<OrderResponseJson> createOrder(@RequestBody OrderJson orderJson) {
        return new ResponseEntity<>(orderService.creatOrder(orderJson), HttpStatus.CREATED);
    }
}
