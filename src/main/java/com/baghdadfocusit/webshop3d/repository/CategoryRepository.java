package com.baghdadfocusit.webshop3d.repository;

import com.baghdadfocusit.webshop3d.entities.Category;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface CategoryRepository extends CrudRepository<Category, UUID> {

}
