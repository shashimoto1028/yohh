package com.example.test.service;

import java.util.LinkedHashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test.persistence.MKbnMapper;
import com.example.test.persistence.entity.ContentResult;

@Service
public class MKbnServiceImpl implements MKbnService {


	private static final Logger logger = LoggerFactory.getLogger(MKbnServiceImpl.class);

	@Autowired
	MKbnMapper mKbnMapper;

	@Override
	public Map<Integer, ContentResult> init(String kbnId) {

		// Mapperアクセス
		Map<Integer, ContentResult> content = new LinkedHashMap<>();
		content = mKbnMapper.selectKbn(kbnId);

		return content;

	}
}