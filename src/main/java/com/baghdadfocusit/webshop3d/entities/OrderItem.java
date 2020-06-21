package com.baghdadfocusit.webshop3d.entities;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.UUID;

@Entity
@Table(name = "order3d_products")
@SuperBuilder
@Data
@NoArgsConstructor
public class OrderItem {

    @EmbeddedId
    private OrderItemId id;

    private int count;

    private double amount;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("ordersId")
    @JoinColumn(name = "orders_id")
    private Order order;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("productsId")
    @JoinColumn(name = "products_id")
    private Product product;

    public OrderItem(final Order order, final Product product, final int count, final double amount) {
        this.order = order;
        this.count = count;
        this.amount = amount;
        this.product = product;
        this.id = new OrderItemId(order.getId(), product.getId());
    }
}

@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
class OrderItemId implements Serializable {
    @Column(name = "orders_id", columnDefinition = "text")
    private UUID ordersId;

    @Column(name = "products_id", columnDefinition = "text")
    private UUID productsId;
}
