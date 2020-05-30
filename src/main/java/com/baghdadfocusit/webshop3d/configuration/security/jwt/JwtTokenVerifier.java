package com.baghdadfocusit.webshop3d.configuration.security.jwt;

import com.baghdadfocusit.webshop3d.configuration.security.JwtConfig;
import com.google.common.base.Strings;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.crypto.SecretKey;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * JWT token verifer. This filter will be add to the req filter and will be executed for every request.
 */
public class JwtTokenVerifier extends OncePerRequestFilter {

    private final JwtConfig jwtConfig;
    private final SecretKey secretKey;

    public JwtTokenVerifier(JwtConfig jwtConfig, SecretKey secretKey) {
        this.jwtConfig = jwtConfig;
        this.secretKey = secretKey;
    }

    /**
     * Verify the user for each request.
     *
     * @param httpServletRequest  req
     * @param httpServletResponse res
     * @param filterChain         filter chain
     * @throws ServletException ServletException
     * @throws IOException      IOException
     */
    @Override
    protected void doFilterInternal(HttpServletRequest httpServletRequest,
                                    HttpServletResponse httpServletResponse,
                                    FilterChain filterChain) throws ServletException, IOException {

        final var authHeader = jwtConfig.getAuthorizationHeader();
        final var tokenPrefix = jwtConfig.getTokenPrefix();

        String authorizationHeader = httpServletRequest.getHeader(authHeader);
        if (Strings.isNullOrEmpty(authorizationHeader) || !authorizationHeader.startsWith(tokenPrefix)) {
            filterChain.doFilter(httpServletRequest, httpServletResponse);
            return;
        }
        final String token = authorizationHeader.replace(tokenPrefix, "");
        try {
            final Jws<Claims> claimsJws = Jwts.parser().setSigningKey(secretKey).parseClaimsJws(token);
            final Claims body = claimsJws.getBody();
            final String username = body.getSubject();
            final var authorities = (List<Map<String, String>>) body.get("authorities");
            final var simpleGrantedAuthorities = authorities.stream()
                    .map(m -> new SimpleGrantedAuthority(m.get("authority")))
                    .collect(Collectors.toSet());
            Authentication authentication = new UsernamePasswordAuthenticationToken(username, null,
                                                                                    simpleGrantedAuthorities);
            SecurityContextHolder.getContext().setAuthentication(authentication);
        } catch (JwtException e) {
            throw new IllegalStateException(String.format("Token %s can not be trusted!", token));
        }
        filterChain.doFilter(httpServletRequest, httpServletResponse);
    }
}
