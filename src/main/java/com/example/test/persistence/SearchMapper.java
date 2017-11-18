package com.example.test.persistence;

import java.util.List;

import com.example.test.controller.form.SearchForm;
import com.example.test.persistence.entity.CategoryListResult;

public interface SearchMapper {

	public List<CategoryListResult> selectSearchList(SearchForm searchForm);
}
