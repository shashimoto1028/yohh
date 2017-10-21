package com.example.test.controller;

import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.test.persistence.entity.ContentResult;
import com.example.test.service.MKbnService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	// 追加
	@Autowired
	MKbnService mKbnService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		logger.info("Welcome home! The client locale is {}.", locale);

		// 追加
		//Content content = new Content();
		Map<Integer, ContentResult> categoryMap= mKbnService.init("PROD_CATEGORY");

		//content.setvalue(contentResult.());

		model.addAttribute("categoryMap", categoryMap );
		System.out.println("DBから取得した結果を出力します。");

		return "home";
	}



}
