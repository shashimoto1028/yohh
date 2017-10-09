package com.example.test.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test.persistence.SelectContentMapper;
import com.example.test.persistence.entity.ContentResult;

@Service
public class HomeServiceImpl implements HomeService {


	private static final Logger logger = LoggerFactory.getLogger(HomeServiceImpl.class);

	@Autowired
	SelectContentMapper selectContentMapper;

	@Override
	public void init(int id) {

		// Mapperアクセス

		ContentResult content = selectContentMapper.selectContent(id);
		System.out.println(content.getValue());



	}
}