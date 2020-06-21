package com.baghdadfocusit.webshop3d.model.product;


import com.baghdadfocusit.webshop3d.entities.Category;
import com.baghdadfocusit.webshop3d.entities.SubCategory;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;
import java.util.UUID;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductJsonResponse {

    @NotNull
    private UUID id;
    @NotNull
    private String name;
    @NotNull
    private double price;
    private boolean sale;
    @NotNull
    private String picLocation;
    @NotNull
    private String description;
    @NotNull
    private int quantity;
    @NotNull
    private Category category;
    @NotNull
    private SubCategory subCategory;
}
