package com.example.test.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test.controller.form.LoginForm;
import com.example.test.persistence.MCustomerMapper;
import com.example.test.persistence.entity.MCustomer;

@Service
public class MCustomerServiceImpl implements MCustomerService{

	private static final Logger logger = LoggerFactory.getLogger(MCustomerServiceImpl.class);

	@Autowired
	MCustomerMapper mCustomerMapper;


	@Override
	public MCustomer serchCustomer(LoginForm form) {
		// TODO 自動生成されたメソッド・スタブ

		return mCustomerMapper.selectCustomer(form);
	}
}
