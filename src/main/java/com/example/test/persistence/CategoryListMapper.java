package com.example.test.persistence;

import java.util.Map;

import org.apache.ibatis.annotations.MapKey;

import com.example.test.persistence.entity.CategoryListResult;

public interface CategoryListMapper {

	@MapKey("categorydiv")
	public Map<Integer, CategoryListResult> selectList(int CategoryDiv);
}