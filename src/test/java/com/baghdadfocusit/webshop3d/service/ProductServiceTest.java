package com.baghdadfocusit.webshop3d.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import com.baghdadfocusit.webshop3d.model.Product;
import com.baghdadfocusit.webshop3d.repository.ProductRepository;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.test.context.ActiveProfiles;

@SpringBootTest
@ActiveProfiles("test")
class ProductServiceTest {

  /**
   * Random UUID.
   */
  private final UUID randomUUID = UUID.randomUUID();

  /**
   * Mocked repository
   */
  @Mock
  ProductRepository productRepository;

  /**
   * Mocked service
   */
  @InjectMocks
  ProductService productService;

  /**
   * Tested entity
   */
  private Product product;

  @BeforeEach
  void setUp() {
    List<Product> products = new ArrayList<>();
    Page<Product> pagedResponse = new PageImpl(products);
    product = Product.builder().id(randomUUID).name("iPhone").price("$200").picLocation("location").build();
    when(productRepository.save(any(Product.class))).thenReturn(product);
    when(productRepository.getFilterProducts(anyString(), anyString(), any())).thenReturn(pagedResponse);
    when(productRepository.findById(randomUUID)).thenReturn(java.util.Optional.ofNullable(product));
  }

  @Test
  void createNewProduct() {
    final var newProduct = productService.createNewProduct(product);
    assertNotNull(newProduct);
    assertNull(newProduct.getUpdatedAt());
    assertEquals("iPhone", newProduct.getName());
    assertEquals(LocalDate.now(), newProduct.getCreatedAt());
  }

  @Test
  void getAllProducts() {
    final var newProducts = (List<Product>) productService.getFilterProducts(Optional.empty(),
                                                                             Optional.empty(),
                                                                             Optional.empty(),
                                                                             Optional.empty());
    assertNotNull(newProducts);
    assertEquals(1, newProducts.size());
    assertNull(newProducts.get(0).getUpdatedAt());
    assertEquals("iPhone", newProducts.get(0).getName());
  }

  @Test
  void findProduct() {
    final var foundProduct = productService.findProduct(String.valueOf(randomUUID));
    assertNotNull(foundProduct);
    assertEquals("iPhone", foundProduct.get().getName());
  }

  @Test
  void deleteProduct() {
    productService.deleteProduct(String.valueOf(randomUUID));
    verify(productRepository, times(1)).deleteById(eq(randomUUID));
  }
}