package com.baghdadfocusit.webshop3d;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.scheduling.annotation.EnableAsync;

/**
 * SpringBootApplication main class.
 */
@SpringBootApplication
@PropertySources({@PropertySource("classpath:email.properties")})
@EnableAsync
public class Webshop3dApplication {

    public static void main(String[] args) {
        SpringApplication.run(Webshop3dApplication.class, args);
    }
}
