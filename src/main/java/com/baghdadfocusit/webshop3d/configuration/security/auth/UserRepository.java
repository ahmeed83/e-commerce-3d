package com.baghdadfocusit.webshop3d.configuration.security.auth;

import java.util.UUID;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * Repository class for the user.
 */
@Repository
public interface UserRepository extends CrudRepository<ApplicationUser, UUID> {

  /**
   * Find user by name in the database.
   *
   * @param userName userName
   * @return ApplicationUser
   */
  ApplicationUser findByUserName(String userName);
}
