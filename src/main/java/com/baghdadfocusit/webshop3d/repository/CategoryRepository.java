package com.baghdadfocusit.webshop3d.repository;

import com.baghdadfocusit.webshop3d.entities.Category;
import java.util.UUID;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends CrudRepository<Category, UUID> {

}
