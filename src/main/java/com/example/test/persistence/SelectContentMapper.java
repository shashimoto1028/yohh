package com.example.test.persistence;

import java.util.Map;

import org.apache.ibatis.annotations.MapKey;

import com.example.test.persistence.entity.ContentResult;

public interface SelectContentMapper {

	@MapKey("seq")
	public Map<Integer, ContentResult> selectContent(int id);
}