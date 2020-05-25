package com.baghdadfocusit.webshop3d.service;

import static org.apache.http.entity.ContentType.IMAGE_GIF;
import static org.apache.http.entity.ContentType.IMAGE_JPEG;
import static org.apache.http.entity.ContentType.IMAGE_PNG;

import com.baghdadfocusit.webshop3d.configuration.aws.AmazonFileStore;
import com.baghdadfocusit.webshop3d.entities.Product;
import com.baghdadfocusit.webshop3d.model.ProductJson;
import com.baghdadfocusit.webshop3d.repository.ProductRepository;
import java.io.IOException;
import java.time.LocalDate;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
@RequiredArgsConstructor
@ConfigurationProperties(prefix = "application.properties")
public class ProductService {

  private final ProductRepository productRepository;
  private final AmazonFileStore amazonFileStore;
  Logger LOG = LoggerFactory.getLogger(ProductService.class);

  private String imageBucketLink;

  public Optional<Product> findProduct(String productId) {
    return productRepository.findById(UUID.fromString(productId));
  }

  public void deleteProduct(String productId) {
    productRepository.deleteById(UUID.fromString(productId));
  }

  public String createProductAndGetProductName(ProductJson productJson) {

    final String imageLink = saveImageInAmazonAndGetLink(productJson.getProductImage());

    final Product product = Product.builder()
                                   .createdAt(LocalDate.now())
                                   .name(productJson.getProductName())
                                   .price(productJson.getProductPrice())
                                   .picLocation(imageLink)
                                   .categoryId(UUID.fromString(productJson.getCategoryId()))
                                   .build();
    final var savedProduct = productRepository.save(product);
    LOG.info("Product is saved with product Id: {}", savedProduct.getId());
    return String.valueOf(savedProduct.getName());
  }

  public Optional<Product> getProductDetails(String productId) {
    return productRepository.findById(UUID.fromString(productId));
  }

  public Page<Product> getFilterProducts(Optional<String> name,
                                         Optional<String> categoryName,
                                         Optional<Integer> page,
                                         Optional<String> sortBy) {
    return productRepository.getFilterProducts(name.orElse("_"),
                                               categoryName.orElse("_"),
                                               PageRequest.of(page.orElse(0),
                                                              20,
                                                              Direction.ASC,
                                                              sortBy.orElse("name")));
  }

  private String saveImageInAmazonAndGetLink(MultipartFile productImage) {
    if (!Arrays.asList(IMAGE_JPEG.getMimeType(), IMAGE_PNG.getMimeType(), IMAGE_GIF.getMimeType())
               .contains(productImage.getContentType())) {
      throw new IllegalStateException("File must be an Image [" + productImage.getContentType() + "]");
    }
    Map<String, String> metadata = new HashMap<>();
    metadata.put("Content-Type", productImage.getContentType());
    metadata.put("Content-Length", String.valueOf(productImage.getSize()));

//    String path = String.format("%s/%s", getBucketName, productId )
    String path = "path";
    String fileName = String.format("%s-%s", productImage.getOriginalFilename(), UUID.randomUUID());

    try {
      amazonFileStore.saveImageInAmazon(path, fileName, Optional.of(metadata), productImage.getInputStream());
    } catch (IOException e) {
      throw new IllegalStateException(e);
    }
    return null;
  }
}
