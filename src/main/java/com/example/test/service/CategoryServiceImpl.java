package com.example.test.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test.persistence.CategoryListMapper;
import com.example.test.persistence.entity.CategoryListResult;

@Service
public class CategoryServiceImpl implements CategoryService {


	private static final Logger logger = LoggerFactory.getLogger(CategoryServiceImpl.class);

	@Autowired
	CategoryListMapper categoryListMapper;

	@Override
	public List<CategoryListResult> init(int categoryDiv) {

		List<CategoryListResult> content = new ArrayList<>();
		content = categoryListMapper.selectCategoryList(categoryDiv);

		return content;

	}
}