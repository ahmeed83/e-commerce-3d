package com.baghdadfocusit.webshop3d.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

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
  @ManyToOne(cascade = {CascadeType.ALL})
  @JoinColumn(name = "category_id")
  private Category category;
}