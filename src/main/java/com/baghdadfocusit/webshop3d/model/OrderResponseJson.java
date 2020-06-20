package com.baghdadfocusit.webshop3d.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.validation.constraints.NotNull;
import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class OrderResponseJson {

    @NotNull
    private String city;
    @NotNull
    private String name;
    @NotNull
    private String orderTrackId;
    @NotNull
    private double totalAmount;
    @NotNull
    private String orderState;
    private String companyName;
    @NotNull
    private String district;
    private String district2;
    @NotNull
    private String mobileNumber;
    private String email;
    private String notes;
    @NotNull
    private List<OrderProductResponseJsons> orderProductResponseJsons;
}
