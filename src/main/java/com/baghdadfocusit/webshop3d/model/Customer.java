package com.baghdadfocusit.webshop3d.model;

import javax.persistence.Entity;
import javax.validation.constraints.NotNull;
import lombok.Data;

@Entity
@Data
public class Customer extends BaseModel {
  @NotNull
  private String name;
  @NotNull
  private String email;
  @NotNull
  private String phone;
  @NotNull
  private String address;
  @NotNull
  private Long customer_number;
}