package com.baghdadfocusit.webshop3d.service;

import com.baghdadfocusit.webshop3d.entities.Category;
import com.baghdadfocusit.webshop3d.repository.CategoryRepository;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {

  CategoryRepository categoryRepository;

  public CategoryService(CategoryRepository categoryRepository) {
    this.categoryRepository = categoryRepository;
  }

  public List<Category> getAllCategories() {
    return (List<Category>) categoryRepository.findAll();
  }
}
