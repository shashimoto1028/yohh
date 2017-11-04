package com.example.test.persistence;

import java.util.List;

import com.example.test.persistence.entity.CategoryListResult;

public interface CategoryListMapper {

	public List<CategoryListResult> selectCategoryList(int CategoryDiv);
}