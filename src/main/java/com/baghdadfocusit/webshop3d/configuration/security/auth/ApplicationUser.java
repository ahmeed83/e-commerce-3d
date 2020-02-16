package com.baghdadfocusit.webshop3d.configuration.security.auth;

import com.baghdadfocusit.webshop3d.model.BaseModel;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Transient;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;

/**
 * Application User class. This class will store the user data in the database.
 */
@Entity
@Getter
@Setter
public class ApplicationUser extends BaseModel {

  @NotBlank(message = "Username is required")
  @Column(unique = true)
  private String userName;
  @NotBlank(message = "Password is required")
  private String password;
  @NotBlank(message = "Password does not match")
  @Transient
  private String passwordConfirm;
  @JsonInclude(Include.NON_NULL)
  @NotBlank
  private String role;
  @JsonInclude(Include.NON_NULL)
  @NotNull
  private boolean isEnabled;
}