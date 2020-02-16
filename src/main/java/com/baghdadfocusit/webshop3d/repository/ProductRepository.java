package com.baghdadfocusit.webshop3d.repository;

import com.baghdadfocusit.webshop3d.model.Product;
import java.util.UUID;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductRepository extends CrudRepository<Product, UUID> {

}
