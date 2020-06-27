package com.baghdadfocusit.webshop3d.model.order;

import com.baghdadfocusit.webshop3d.entities.Order;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;
import java.time.LocalDate;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class OrderStatusResponse {

    @NotNull
    private LocalDate createdAt;
    @NotNull
    private LocalDate updateAt;
    @NotNull
    private String name;
    @NotNull
    private String orderTrackId;
    @NotNull
    private Order.OrderState orderState;
}
