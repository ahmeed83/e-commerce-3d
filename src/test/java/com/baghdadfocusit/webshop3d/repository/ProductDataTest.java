package com.baghdadfocusit.webshop3d.repository;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import com.baghdadfocusit.webshop3d.model.Product;
import java.time.LocalDate;
import java.util.List;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.ActiveProfiles;

@DataJpaTest
@ActiveProfiles("test")
public class ProductDataTest {

  @Autowired
  private ProductRepository productRepository;

  @Test
  void saveProductToDatabase() {
    productRepository.save(Product.builder()
                                  .createdAt(LocalDate.now())
                                  .name("iPhone")
                                  .price("$200")
                                  .picLocation("location")
                                  .build());
    List<Product> products = (List<Product>) productRepository.findAll();
    assertNotNull(products);
    assertEquals(1, products.size());
    assertEquals("iPhone", products.get(0).getName());
  }
}
