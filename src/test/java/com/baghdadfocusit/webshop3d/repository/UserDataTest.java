package com.baghdadfocusit.webshop3d.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUser;
import com.baghdadfocusit.webshop3d.configuration.security.auth.UserRepository;
import java.time.LocalDate;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ActiveProfiles;

@DataJpaTest
@ActiveProfiles("test")
public class UserDataTest {

  @Autowired
  private UserRepository userRepository;

  @Test
  void saveUserToDatabase() {
    userRepository.save(ApplicationUser.builder()
                                       .createdAt(LocalDate.now())
                                       .userName("ahmed")
                                       .password("password")
                                       .passwordConfirm("password")
                                       .role("CUSTOMER")
                                       .isEnabled(true)
                                       .build());
    ApplicationUser userFromDb = userRepository.findByUserName("ahmed");
    assertNotNull(userFromDb);
    assertEquals("CUSTOMER", userFromDb.getRole());
  }
}
