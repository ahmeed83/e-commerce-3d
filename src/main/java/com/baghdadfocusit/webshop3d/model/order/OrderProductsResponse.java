package com.baghdadfocusit.webshop3d.model.order;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class OrderProductsResponse {

    @NotNull
    private String productName;
    @NotNull
    private double productPrice;
    @NotNull
    private int productCount;
    @NotNull
    private double totalAmount;
}
