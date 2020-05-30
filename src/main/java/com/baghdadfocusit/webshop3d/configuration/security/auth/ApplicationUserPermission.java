package com.baghdadfocusit.webshop3d.configuration.security.auth;

/**
 * Class defines the permissions that every role has.
 */
public enum ApplicationUserPermission {

    CUSTOMER_READ("customer:read"), CUSTOMER_WRITE("customer:write"), CUSTOMER_UPDATE(
            "customer:update"), CUSTOMER_DELETE("customer:delete"),

    EMPLOYEE_READ("employee:read"), EMPLOYEE_WRITE("employee:write"), EMPLOYEE_UPDATE(
            "employee:update"), EMPLOYEE_DELETE("employee:delete"),

    PRODUCT_READ("product:read"), PRODUCT_WRITE("product:write"), PRODUCT_UPDATE("product:update"), PRODUCT_DELETE(
            "product:delete"),

    ORDER_READ("order:read"), ORDER_WRITE("order:write"), ORDER_UPDATE("order:update"), ORDER_DELETE("order:delete");

    private final String permission;

    ApplicationUserPermission(String permission) {
        this.permission = permission;
    }

    public String getPermission() {
        return permission;
    }
}
