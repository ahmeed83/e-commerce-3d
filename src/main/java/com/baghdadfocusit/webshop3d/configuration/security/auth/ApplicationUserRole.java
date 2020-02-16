package com.baghdadfocusit.webshop3d.configuration.security.auth;

import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.CUSTOMER_DELETE;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.CUSTOMER_READ;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.CUSTOMER_UPDATE;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.CUSTOMER_WRITE;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.EMPLOYEE_DELETE;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.EMPLOYEE_READ;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.EMPLOYEE_UPDATE;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.EMPLOYEE_WRITE;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.ORDER_DELETE;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.ORDER_READ;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.ORDER_UPDATE;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.ORDER_WRITE;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.PRODUCT_DELETE;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.PRODUCT_READ;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.PRODUCT_UPDATE;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserPermission.PRODUCT_WRITE;

import com.google.common.collect.Sets;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

/**
 * Class that defines the roles of the application. Admin, Employee and Customer.
 */
public enum ApplicationUserRole {

  //@formatter:off
  CUSTOMER(Sets.newHashSet(PRODUCT_READ, ORDER_WRITE)),
  ADMIN(Sets.newHashSet(adminPermissions())),
  EMPLOYEE(Sets.newHashSet(employeePermissions()));
  //@formatter:on

  private final Set<ApplicationUserPermission> permissions;

  ApplicationUserRole(Set<ApplicationUserPermission> permissions) {
    this.permissions = permissions;
  }

  private static List<ApplicationUserPermission> adminPermissions() {
    List<ApplicationUserPermission> permissions = new ArrayList<>();
    permissions.add(EMPLOYEE_READ);
    permissions.add(EMPLOYEE_WRITE);
    permissions.add(EMPLOYEE_UPDATE);
    permissions.add(EMPLOYEE_DELETE);

    permissions.add(CUSTOMER_READ);
    permissions.add(CUSTOMER_WRITE);
    permissions.add(CUSTOMER_UPDATE);
    permissions.add(CUSTOMER_DELETE);

    permissions.add(PRODUCT_READ);
    permissions.add(PRODUCT_WRITE);
    permissions.add(PRODUCT_UPDATE);
    permissions.add(PRODUCT_DELETE);

    permissions.add(ORDER_READ);
    permissions.add(ORDER_WRITE);
    permissions.add(ORDER_UPDATE);
    permissions.add(ORDER_DELETE);
    return permissions;
  }

  private static List<ApplicationUserPermission> employeePermissions() {
    List<ApplicationUserPermission> permissions = new ArrayList<>();
    permissions.add(CUSTOMER_READ);

    permissions.add(PRODUCT_READ);
    permissions.add(PRODUCT_WRITE);
    permissions.add(PRODUCT_UPDATE);
    permissions.add(PRODUCT_DELETE);

    permissions.add(ORDER_READ);
    permissions.add(ORDER_WRITE);
    permissions.add(ORDER_UPDATE);
    permissions.add(ORDER_DELETE);
    return permissions;
  }

  public Set<ApplicationUserPermission> getPermissions() {
    return permissions;
  }

  /**
   * Generate granted authority for the user.
   *
   * @return set of permissions.
   */
  public Set<SimpleGrantedAuthority> getGrantedAuthority() {
    final Set<SimpleGrantedAuthority> permissions = getPermissions().stream()
                                                                    .map(permission -> new SimpleGrantedAuthority(
                                                                        permission.getPermission()))
                                                                    .collect(Collectors.toSet());
    permissions.add(new SimpleGrantedAuthority("ROLE_" + this.getRole()));
    return permissions;
  }

  /**
   * Get role name.
   *
   * @return role name.
   */
  public String getRole() {
    return this.name();
  }
}
