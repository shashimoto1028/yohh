
package com.example.test.service;

import java.util.Map;

import com.example.test.persistence.entity.CategoryListResult;

public interface CategoryService {

	public Map<Integer, CategoryListResult> init(int CategoryDiv);

}