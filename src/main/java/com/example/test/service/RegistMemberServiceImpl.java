package com.example.test.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test.controller.form.RegistMemberForm;
import com.example.test.persistence.RegistMemberMapper;
import com.example.test.persistence.entity.Customer;

@Service
public class RegistMemberServiceImpl implements RegistMemberService {

	private static final Logger logger = LoggerFactory.getLogger(RegistMemberServiceImpl.class);

	@Autowired
	RegistMemberMapper registMemberMapper;
	//Customer customer;

	@Override
	public int regsitMember(RegistMemberForm form) {

		//会員データはBeanに詰めてからDAOにインスタンで渡すのでここでnewしとく
		Customer customer = new Customer();

		//パラメータを一時的に保持
		String CUSTOMER_NAME_KJ = form.getName();
		String CUSTOMER_NAME_KN = form.getKana();
		String CUSTOMER_BIRTHDAY = form.getBirthday();
		String ZIP_CD = form.getZip();
		String ADDRESS = form.getAddress();
		String TEL_NO = form.getTel();
		String MAIL_ADDRESS = form.getTel();

		logger.info("登録会員情報を登録");

		//インスタンスにパラメータを詰め込む
		customer.setCUSTOMER_NAME_KJ(CUSTOMER_NAME_KJ);
		customer.setCUSTOMER_NAME_KN(CUSTOMER_NAME_KN);
		customer.setCUSTOMER_BIHDAY(CUSTOMER_BIRTHDAY);
		customer.setZIP_CD(ZIP_CD);
		customer.setADDRESS(ADDRESS);
		customer.setTEL_NO(TEL_NO);
		customer.setMAIL_ADDRESS(MAIL_ADDRESS);

		logger.info("RegistMemberServiceImpl:insert直前");

		//INSERT実行
		int count = registMemberMapper.insertMember(
				customer
		);
		return count;
	}
}