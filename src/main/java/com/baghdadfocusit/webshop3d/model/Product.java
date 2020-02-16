package com.baghdadfocusit.webshop3d.model;

import javax.persistence.Entity;
import javax.validation.constraints.NotNull;
import lombok.Data;

@Entity
@Data
public class Product extends BaseModel {
  @NotNull
  private String name;
  @NotNull
  private String picLocation;
  @NotNull
  private String price;
}