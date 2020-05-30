package com.baghdadfocusit.webshop3d.configuration.aws;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.ObjectMetadata;
import org.springframework.stereotype.Service;

import java.io.InputStream;
import java.util.Map;
import java.util.Optional;

@Service
public class AmazonFileStore {

    private final AmazonS3 amazonS3;

    public AmazonFileStore(AmazonS3 amazonS3) {
        this.amazonS3 = amazonS3;
    }

    public void saveImageInAmazon(String path,
                                  String fileName,
                                  Optional<Map<String, String>> optionalMetaData,
                                  InputStream inputStream) {
        ObjectMetadata metaData = new ObjectMetadata();
        optionalMetaData.ifPresent(map -> {
            if (!map.isEmpty()) {
                map.forEach(metaData::addUserMetadata);
            }
        });
        try {
            amazonS3.putObject(path, fileName, inputStream, metaData);
        } catch (AmazonServiceException e) {
            throw new IllegalStateException("failed to store content s3", e);
        }
    }
}
