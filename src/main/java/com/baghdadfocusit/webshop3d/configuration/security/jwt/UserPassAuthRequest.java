package com.baghdadfocusit.webshop3d.configuration.security.jwt;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class UserPassAuthRequest {
  private String userName;
  private String password;
}
