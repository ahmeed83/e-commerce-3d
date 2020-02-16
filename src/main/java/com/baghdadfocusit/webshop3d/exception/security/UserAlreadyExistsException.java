package com.baghdadfocusit.webshop3d.exception.security;

/**
 * Exception for user already exists.
 */
public class UserAlreadyExistsException extends UserAuthenticationException {

  public UserAlreadyExistsException() {
    super("User already exists");
  }
}
