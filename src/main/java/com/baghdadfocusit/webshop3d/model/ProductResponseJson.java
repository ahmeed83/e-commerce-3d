package com.baghdadfocusit.webshop3d.model;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductResponseJson {

    @NotNull
    private String productName;
    @NotNull
    private String productPrice;
}
