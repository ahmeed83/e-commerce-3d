package com.baghdadfocusit.webshop3d.configuration.security.auth;

import com.baghdadfocusit.webshop3d.exception.security.UserAuthenticationException;

import java.util.Optional;

/**
 * Repository for User Principal interface.
 */
public interface ApplicationUserPrincipalRepository {

    /**
     * Find the user by its name. This method will be used by Spring to load the user from the database.
     *
     * @param userName userName
     * @return ApplicationUserPrincipal
     */
    Optional<ApplicationUserPrincipal> findUserByUserName(String userName);

    /**
     * This method will save a new user to the database. Each user will be enabled by default. Each user will has the
     * role
     * * customer by default.
     *
     * @param applicationUser user that will be saved
     * @throws UserAuthenticationException user exception
     */
    void saveApplicationUser(ApplicationUser applicationUser) throws UserAuthenticationException;
}
