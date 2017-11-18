package com.example.test.controller;

import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.test.persistence.entity.MCustomer;
import com.example.test.persistence.entity.MKbn;
import com.example.test.persistence.entity.ProdResult;
import com.example.test.service.MKbnService;
import com.example.test.service.ProdResultService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	// 追加
	@Autowired
	MKbnService mKbnService;

	@Autowired
	ProdResultService prodResultService;

	@Autowired
	HttpSession session;

	//カテゴリのマップ
	Map<Integer, MKbn> categoryMap;

	//新商品のリスト
	List<ProdResult> newProdList;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		logger.info("Welcome home! The client locale is {}.", locale);

		// カテゴリを取得
		categoryMap= mKbnService.init("PROD_CATEGORY");

		// 新商品の取得
		newProdList = prodResultService.selectNewProd();

		MCustomer customer = (MCustomer) session.getAttribute("customer");

		if(customer != null) model.addAttribute("customer",customer);
		model.addAttribute("categoryMap", categoryMap );
		model.addAttribute("newProdList", newProdList );

		return "home";
	}

}
