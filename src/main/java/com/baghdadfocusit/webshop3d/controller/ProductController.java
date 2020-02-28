package com.baghdadfocusit.webshop3d.controller;

import com.baghdadfocusit.webshop3d.model.Product;
import com.baghdadfocusit.webshop3d.service.ProductService;
import java.util.Optional;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * Product controller.
 */
@RestController
@RequestMapping("resources/products")
public class ProductController {

  private final ProductService productService;

  public ProductController(ProductService productService) {
    this.productService = productService;
  }

  @GetMapping
  public ResponseEntity<Page<Product>> getAllProducts(@RequestParam Optional<String> name,
                                                      @RequestParam Optional<String> categoryName,
                                                      @RequestParam Optional<Integer> page,
                                                      @RequestParam Optional<String> sortBy) {
    return ResponseEntity.ok(productService.getFilterProducts(name, categoryName, page, sortBy));
  }

  @GetMapping("{productId}")
  public ResponseEntity<Product> getProductDetails(@PathVariable String productId) {
    return ResponseEntity.ok(productService.getProductDetails(productId).orElseThrow());
  }
}
