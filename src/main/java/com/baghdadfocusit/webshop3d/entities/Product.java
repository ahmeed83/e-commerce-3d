package com.baghdadfocusit.webshop3d.entities;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
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
    private String price;

    @JoinColumn(name = "category_id", insertable = false, updatable = false)
    @ManyToOne(targetEntity = Category.class, fetch = FetchType.EAGER)
    private Category category;

    @NotNull
    @Column(name = "category_id")
    private UUID categoryId;
}