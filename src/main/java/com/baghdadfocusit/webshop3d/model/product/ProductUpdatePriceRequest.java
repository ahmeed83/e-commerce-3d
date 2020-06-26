package com.baghdadfocusit.webshop3d.model.product;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductUpdatePriceRequest {

    @NotNull
    private double productPrice;
}
