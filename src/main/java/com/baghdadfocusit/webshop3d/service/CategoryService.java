package com.baghdadfocusit.webshop3d.service;

import com.baghdadfocusit.webshop3d.entities.Category;
import com.baghdadfocusit.webshop3d.model.CategoryJson;
import com.baghdadfocusit.webshop3d.repository.CategoryRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class CategoryService {

    private static final Logger LOGGER = LoggerFactory.getLogger(CategoryService.class);
    CategoryRepository categoryRepository;

    public CategoryService(CategoryRepository categoryRepository) {
        this.categoryRepository = categoryRepository;
    }

    public List<Category> getAllCategories() {
        return (List<Category>) categoryRepository.findAll();
    }

    public String creatCategoryAndGetCategoryName(final CategoryJson categoryJson) {
        final Category category = Category.builder()
                .name(categoryJson.getCategoryName())
                .createdAt(LocalDate.now())
                .build();
        final var savedCategory = categoryRepository.save(category);
        LOGGER.info("Product is saved with product Id: {}", savedCategory.getId());
        return savedCategory.getName();
    }
}
