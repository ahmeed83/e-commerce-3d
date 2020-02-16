package com.baghdadfocusit.webshop3d.exception.security;

/**
 * Exception for password not does not match.
 */
public class PasswordDoesNotMatchException extends UserAuthenticationException {

  public PasswordDoesNotMatchException() {
    super("Password does't match");
  }
}
