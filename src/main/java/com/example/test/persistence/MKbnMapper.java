package com.example.test.persistence;

import java.util.Map;

import org.apache.ibatis.annotations.MapKey;

import com.example.test.persistence.entity.ContentResult;

public interface MKbnMapper {

	@MapKey("seq")
	public Map<Integer, ContentResult> selectKbn(String kbnId);
}