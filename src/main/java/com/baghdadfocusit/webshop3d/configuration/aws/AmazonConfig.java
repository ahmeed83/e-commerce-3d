package com.baghdadfocusit.webshop3d.configuration.aws;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AmazonConfig {

  @Bean
  public AmazonS3 s3() {
    AWSCredentials awsCredentials = new BasicAWSCredentials("AKIAJVYTYRKC2AVP7NZA",
                                                            "LbKLpmtvOvYQUyds9zYsxQspi2ztt2EDO8gojlaT");
    return AmazonS3ClientBuilder.standard()
                                .withRegion("eu-central-1")
                                .withCredentials(new AWSStaticCredentialsProvider(awsCredentials))
                                .build();
  }
}
