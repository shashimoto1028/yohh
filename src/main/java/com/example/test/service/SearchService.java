
package com.example.test.service;

import java.util.List;

import com.example.test.controller.form.SearchForm;
import com.example.test.persistence.entity.CategoryListResult;

public interface SearchService {

	public List<CategoryListResult> init(SearchForm searchForm);

}