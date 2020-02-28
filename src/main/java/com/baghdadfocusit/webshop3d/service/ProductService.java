package com.baghdadfocusit.webshop3d.service;

import com.baghdadfocusit.webshop3d.model.Product;
import com.baghdadfocusit.webshop3d.repository.ProductRepository;
import java.time.LocalDate;
import java.util.Optional;
import java.util.UUID;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

  ProductRepository productRepository;

  public ProductService(ProductRepository productRepository) {
    this.productRepository = productRepository;
  }

  public Optional<Product> findProduct(String productId) {
    return productRepository.findById(UUID.fromString(productId));
  }

  public void deleteProduct(String productId) {
    productRepository.deleteById(UUID.fromString(productId));
  }

  public Product createNewProduct(Product product) {
    product.setCreatedAt(LocalDate.now());
    return productRepository.save(product);
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
}
