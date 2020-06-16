package com.baghdadfocusit.webshop3d.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import java.util.Set;
import java.util.UUID;

@Entity
@SuperBuilder
@Getter
@Setter
@NoArgsConstructor
public class Product extends BaseModel {

    @NotNull
    private String name;
    @NotNull
    private String picLocation;
    @NotNull
    private double price;
    @NotNull
    private int quantity;
    private boolean sale;
    private String description;

    @JoinColumn(name = "category_id", insertable = false, updatable = false)
    @ManyToOne(targetEntity = Category.class, fetch = FetchType.EAGER)
    private Category category;

    @JoinColumn(name = "sub_category_id", insertable = false, updatable = false)
    @ManyToOne(targetEntity = SubCategory.class, fetch = FetchType.EAGER)
    private SubCategory subCategory;

    @NotNull
    @Column(name = "category_id")
    private UUID categoryId;

    @NotNull
    @Column(name = "sub_category_id")
    private UUID subCategoryId;

    @ManyToMany(mappedBy = "products", fetch = FetchType.LAZY)
    @JsonBackReference
    Set<Order> orders;
}
