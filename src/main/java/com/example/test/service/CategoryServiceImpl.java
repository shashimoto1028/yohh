package com.example.test.service;

import java.util.LinkedHashMap;
import java.util.Map;

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
	public Map<Integer, CategoryListResult> init(int categoryDiv) {

		// Mapperアクセス
		Map<Integer, CategoryListResult> content = new LinkedHashMap<>();
		content = categoryListMapper.selectCategoryList(categoryDiv);

		return content;

	}
}