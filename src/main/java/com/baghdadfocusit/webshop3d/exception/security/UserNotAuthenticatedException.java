package com.baghdadfocusit.webshop3d.exception.security;

/**
 * Exception for user is not authenticated.
 */
public class UserNotAuthenticatedException extends UserAuthenticationException {

    public UserNotAuthenticatedException(Throwable cause) {
        super("User is not authenticated", cause);
    }
}
