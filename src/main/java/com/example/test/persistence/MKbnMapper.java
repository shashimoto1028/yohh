package com.example.test.persistence;

import java.util.Map;

import org.apache.ibatis.annotations.MapKey;

import com.example.test.persistence.entity.MKbn;

public interface MKbnMapper {

	@MapKey("seq")
	public Map<Integer, MKbn> selectKbn(String kbnId);
}