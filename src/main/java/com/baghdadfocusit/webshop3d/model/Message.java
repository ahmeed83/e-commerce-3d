package com.baghdadfocusit.webshop3d.model;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.time.LocalDate;

@Entity
public class Message {
    @Id
    @Column(name = "message_id")
    private Long id;
    @Column(name = "content")
    private String message;
    @DateTimeFormat
    private LocalDate createdOn;

    public Long getId() {
        return id;
    }

    public void setId(final Long id) {
        this.id = id;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(final String message) {
        this.message = message;
    }

    public LocalDate getCreatedOn() {
        return createdOn;
    }

    public void setCreatedOn(final LocalDate createdOn) {
        this.createdOn = createdOn;
    }
}
