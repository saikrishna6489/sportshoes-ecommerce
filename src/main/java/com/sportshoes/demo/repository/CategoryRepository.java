package com.sportshoes.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sportshoes.demo.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {

	  Category findById(long id);
}
