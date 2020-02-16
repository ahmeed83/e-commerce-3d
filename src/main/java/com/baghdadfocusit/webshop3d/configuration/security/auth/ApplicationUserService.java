package com.baghdadfocusit.webshop3d.configuration.security.auth;

import com.baghdadfocusit.webshop3d.exception.security.UserAuthenticationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * Application user service.
 */
@Service
public class ApplicationUserService implements UserDetailsService {

  private final ApplicationUserPrincipalRepository applicationUserPrincipalRepository;

  @Autowired
  public ApplicationUserService(ApplicationUserPrincipalRepository applicationUserPrincipalRepository) {
    this.applicationUserPrincipalRepository = applicationUserPrincipalRepository;
  }

  /**
   * Load user form the data base
   *
   * @param userName userName
   * @return the loaded user
   * @throws UsernameNotFoundException UsernameNotFoundException
   */
  @Override
  public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
    return applicationUserPrincipalRepository.findUserByUserName(userName)
                                             .orElseThrow(() -> new UsernameNotFoundException(String.format(
                                                 "UserName %s not found",
                                                 userName)));
  }

  /**
   * Register a new user in the database
   *
   * @param applicationUser the new user
   */
  public void saveApplicationUser(ApplicationUser applicationUser) throws UserAuthenticationException {
    applicationUserPrincipalRepository.saveApplicationUser(applicationUser);
  }
}
