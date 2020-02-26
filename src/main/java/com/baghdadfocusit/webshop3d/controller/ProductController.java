package com.baghdadfocusit.webshop3d.controller;

import com.baghdadfocusit.webshop3d.model.Product;
import com.baghdadfocusit.webshop3d.service.ProductService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
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
  public ResponseEntity<Iterable<Product>> getAllProducts() {
    return ResponseEntity.ok(productService.getAllProducts());
  }

  @GetMapping("{productId}")
  public ResponseEntity<Product> getProductDetails(@PathVariable String productId) {
    return ResponseEntity.ok(productService.getProductDetails(productId).orElseThrow());
  }
}
