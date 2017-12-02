package com.example.test.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.test.persistence.entity.MCustomer;
import com.example.test.persistence.entity.ProdResult;
import com.example.test.service.ProdResultService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProductDetailController {

	private static final Logger logger = LoggerFactory.getLogger(ProductDetailController.class);

	@Autowired
	ProdResultService prodResultService;

	@Autowired
	HttpSession session;

	@RequestMapping(value = "/productDetail", method = RequestMethod.GET)
	public String productDetail(@RequestParam(value = "prod_cd", required = false) String prod_cd, Locale locale,
			Model model) {

		logger.info("productDetail()呼び出し");
		System.out.println(prod_cd);

		//セッションを取得
		MCustomer customer = (MCustomer) session.getAttribute("customer");

		//セッションログイン情報がある場合
		if(customer != null) model.addAttribute("customer",customer);

		String message = null;

		//nullの場合には検索しない
		if ("".equals(prod_cd)) {
			message = "該当する商品がありません。";
			model.addAttribute("message", message);
			return "product";
		}

		// 該当する商品を検索
		ProdResult result = prodResultService.checkProd(prod_cd);

		// 存在チェック
		if (result == null) {

			message = "該当する商品がありません。";
			model.addAttribute("message", message);
			return "product";
		}

		model.addAttribute("result", result);

		return "product";
	}
}
