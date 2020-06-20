package com.baghdadfocusit.webshop3d.model.order;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class OrderProductRequestJson {

    @NotNull
    private String productId;
    @NotNull
    @Min(value = 1, message = "Product should be at least one")
    private int productCount;
}
