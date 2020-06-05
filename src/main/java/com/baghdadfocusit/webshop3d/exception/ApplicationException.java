package com.baghdadfocusit.webshop3d.exception;


import org.springframework.http.HttpStatus;

public class ApplicationException extends RuntimeException {

    private final HttpStatus status;

    public ApplicationException(final String s, final HttpStatus status) {
        super(s);
        this.status = status;
    }

    public HttpStatus getStatus() {
        return status;
    }
}
