package com.baghdadfocusit.webshop3d.exception;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.time.LocalDateTime;

@ControllerAdvice
public class ApplicationResponseExceptionHandler extends ResponseEntityExceptionHandler {

    @ExceptionHandler(ApplicationException.class)
    public ResponseEntity<ApplicationErrorResponse> customCategory(ApplicationException ex) {
        ApplicationErrorResponse errors = new ApplicationErrorResponse();
        errors.setTimestamp(LocalDateTime.now());
        errors.setErrorMessage(ex.getMessage());
        errors.setStatus(ex.getStatus().value());
        return new ResponseEntity<>(errors, ex.getStatus());
    }
}
