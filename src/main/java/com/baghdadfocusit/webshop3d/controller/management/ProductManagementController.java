package com.baghdadfocusit.webshop3d.controller.management;

import com.baghdadfocusit.webshop3d.entities.Category;
import com.baghdadfocusit.webshop3d.model.ProductJson;
import com.baghdadfocusit.webshop3d.service.CategoryService;
import com.baghdadfocusit.webshop3d.service.ProductService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Product Management controller.
 */
@RestController
@RequestMapping("management/v1/products")
public class ProductManagementController {

  public static final String HAS_ROLE_ADMIN_AND_EMPLOYEE = "hasAnyRole('ROLE_ADMIN, ROLE_EMPLOYEE')";

  private final ProductService productService;
  private final CategoryService categoryService;

  public ProductManagementController(ProductService productService,
                                     CategoryService categoryService) {
    this.productService = productService;
    this.categoryService = categoryService;
  }

  @PostMapping(consumes = MediaType.MULTIPART_FORM_DATA_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
  @PreAuthorize(HAS_ROLE_ADMIN_AND_EMPLOYEE)
  public ResponseEntity<String> createProduct(@ModelAttribute @Valid ProductJson product) {
    return new ResponseEntity<>(productService.createProductAndGetProductName(product), HttpStatus.CREATED);
  }

  @GetMapping("/categories")
  @PreAuthorize(HAS_ROLE_ADMIN_AND_EMPLOYEE)
  public ResponseEntity<List<Category>> getCategories() {
    return new ResponseEntity<>(categoryService.getAllCategories(), HttpStatus.ACCEPTED);
  }
//
//  @PutMapping("{productId}")
//  @PreAuthorize(HAS_ROLE_ADMIN_AND_EMPLOYEE)
//  public ResponseEntity<Product> updateProduct(@RequestBody @Valid Product updatedProduct,
//                                               @PathVariable String productId) {
//    return productService.findProduct(productId).map(product -> {
//      product.setName(updatedProduct.getName());
//      product.setPrice(updatedProduct.getPrice());
//      //TODO: check how to get the pic from AMAZON
//      product.setPicLocation(updatedProduct.getPicLocation());
//      product.setUpdatedAt(LocalDate.now());
//      return new ResponseEntity<>(productService.createNewProduct(product), HttpStatus.OK);
//    }).orElseThrow(() -> new IllegalArgumentException("No Product found!"));
//  }

  @DeleteMapping("{productId}")
  @PreAuthorize(HAS_ROLE_ADMIN_AND_EMPLOYEE)
  public ResponseEntity<HttpStatus> deleteProduct(@PathVariable String productId) {
    //TODO: if product is not there return a proper exception with 404
    productService.deleteProduct(productId);
    return new ResponseEntity<>(HttpStatus.ACCEPTED);
  }
}
