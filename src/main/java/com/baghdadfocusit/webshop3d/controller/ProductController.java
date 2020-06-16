package com.baghdadfocusit.webshop3d.controller;

import com.baghdadfocusit.webshop3d.entities.Category;
import com.baghdadfocusit.webshop3d.entities.Product;
import com.baghdadfocusit.webshop3d.model.SubCategoryJson;
import com.baghdadfocusit.webshop3d.service.CategoryService;
import com.baghdadfocusit.webshop3d.service.ProductService;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

/**
 * Product controller.
 */
@RestController
@RequestMapping("resources/products")
public class ProductController {

    private final ProductService productService;
    private final CategoryService categoryService;

    public ProductController(ProductService productService, final CategoryService categoryService) {
        this.productService = productService;
        this.categoryService = categoryService;
    }

    @GetMapping("/categories")
    public ResponseEntity<List<Category>> getCategories() {
        return new ResponseEntity<>(categoryService.getAllCategories(), HttpStatus.ACCEPTED);
    }


    @GetMapping("/sub-category/{categoryId}")
    public ResponseEntity<List<SubCategoryJson>> getSubCategories(@PathVariable String categoryId) {
        return new ResponseEntity<>(categoryService.getAllSubCategories(categoryId), HttpStatus.ACCEPTED);
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
