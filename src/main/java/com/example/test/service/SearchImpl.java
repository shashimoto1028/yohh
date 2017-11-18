package com.example.test.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test.controller.form.SearchForm;
import com.example.test.persistence.SearchMapper;
import com.example.test.persistence.entity.CategoryListResult;

@Service
public class SearchImpl implements SearchService {

	private static final Logger logger = LoggerFactory.getLogger(SearchImpl.class);

	@Autowired
	SearchMapper searchMapper;

	@Override
	public List<CategoryListResult> init(SearchForm searchForm) {
		// TODO 自動生成されたメソッド・スタブ

		List<CategoryListResult> content = new ArrayList<>();
		System.out.println("aaa");
		System.out.println(searchForm.getSearch());
		content = searchMapper.selectSearchList(searchForm);
		System.out.println("bbb");
		System.out.println(searchForm.getSearch());
		return content;
	}
}