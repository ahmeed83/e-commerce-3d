package com.baghdadfocusit.webshop3d.repository;

import com.baghdadfocusit.webshop3d.entities.Product;
import java.util.UUID;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends PagingAndSortingRepository<Product, UUID> {

  @Query("SELECT p FROM Product p LEFT JOIN Category c ON (c.id = p.category) WHERE UPPER(p.name)"
      + " LIKE CONCAT('%',UPPER(:productName),'%') AND UPPER(c.name) LIKE CONCAT('%',UPPER(:categoryName),'%')")
  Page<Product> getFilterProducts(@Param("productName") String productName,
                                  @Param("categoryName") String categoryName,
                                  Pageable pageable);
}
