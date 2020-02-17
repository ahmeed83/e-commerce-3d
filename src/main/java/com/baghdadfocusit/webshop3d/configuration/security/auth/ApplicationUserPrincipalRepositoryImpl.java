package com.baghdadfocusit.webshop3d.configuration.security.auth;

import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserRole.ADMIN;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserRole.CUSTOMER;
import static com.baghdadfocusit.webshop3d.configuration.security.auth.ApplicationUserRole.EMPLOYEE;

import com.baghdadfocusit.webshop3d.exception.security.PasswordDoesNotMatchException;
import com.baghdadfocusit.webshop3d.exception.security.UserAlreadyExistsException;
import com.baghdadfocusit.webshop3d.exception.security.UserAuthenticationException;
import java.time.LocalDate;
import java.util.Optional;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;

/**
 * Repository for User Principal interface Impl.
 */
@Repository
public class ApplicationUserPrincipalRepositoryImpl implements ApplicationUserPrincipalRepository {

  /**
   * UserRepository.
   */
  private final UserRepository userRepository;

  /**
   * PasswordEncoder.
   */
  private final PasswordEncoder passwordEncoder;

  /**
   * Constructor.
   *
   * @param passwordEncoder passwordEncoder
   * @param userRepository userRepository
   */
  @Autowired
  public ApplicationUserPrincipalRepositoryImpl(PasswordEncoder passwordEncoder,
                                                UserRepository userRepository) {
    this.passwordEncoder = passwordEncoder;
    this.userRepository = userRepository;
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public Optional<ApplicationUserPrincipal> findUserByUserName(String userName) {
    final var applicationUser = Optional.ofNullable(userRepository.findByUserName(userName))
                                        .orElseThrow(() -> new UsernameNotFoundException(userName));
    Set<SimpleGrantedAuthority> grantedAuthority;
    switch (applicationUser.getRole()) {
      case "ADMIN":
        grantedAuthority = ADMIN.getGrantedAuthority();
        break;
      case "EMPLOYEE":
        grantedAuthority = EMPLOYEE.getGrantedAuthority();
        break;
      case "CUSTOMER":
        grantedAuthority = CUSTOMER.getGrantedAuthority();
        break;
      default:
        throw new IllegalStateException("Unknown Role name: " + applicationUser.getRole());
    }
    return Optional.of(new ApplicationUserPrincipal(applicationUser.getUserName(),
                                                    applicationUser.getPassword(),
                                                    grantedAuthority,
                                                    applicationUser.isEnabled()));
  }

  /**
   * {@inheritDoc}
   */
  @Override
  public void saveApplicationUser(ApplicationUser applicationUser) throws UserAuthenticationException {
    if (userRepository.findByUserName(applicationUser.getUserName()) != null) {
      throw new UserAlreadyExistsException();
    }
    if (!applicationUser.getPassword().equals(applicationUser.getPasswordConfirm())) {
      throw new PasswordDoesNotMatchException();
    }
    applicationUser.setEnabled(true);
    applicationUser.setCreatedAt(LocalDate.now());
    applicationUser.setPassword(passwordEncoder.encode(applicationUser.getPassword()));
    applicationUser.setRole(CUSTOMER.getRole());
    userRepository.save(applicationUser);
  }
}