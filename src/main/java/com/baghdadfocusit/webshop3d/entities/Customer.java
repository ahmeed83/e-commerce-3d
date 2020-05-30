package com.baghdadfocusit.webshop3d.entities;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

import javax.persistence.Entity;
import javax.validation.constraints.NotNull;

@Entity
@SuperBuilder
@Getter
@Setter
@NoArgsConstructor
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
    private Long customerNumber;
}