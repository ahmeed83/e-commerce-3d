package com.baghdadfocusit.webshop3d.repository;

import com.baghdadfocusit.webshop3d.entities.SubCategory;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface SubCategoryRepository extends CrudRepository<SubCategory, UUID> {
    List<SubCategory> findSubCategoriesByCategoryId(UUID id);

    Optional<Object> findSubCategoryByNameIgnoreCase(String subCategoryName);
}
