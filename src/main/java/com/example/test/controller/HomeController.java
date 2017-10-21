package com.example.test.controller;

import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.test.controller.form.CategoryForm;
import com.example.test.persistence.entity.ContentResult;
import com.example.test.service.MKbnService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	// 追加
	@Autowired
	MKbnService mKbnService;

	//カテゴリのマップ
	Map<Integer, ContentResult> categoryMap;

	@ModelAttribute
    public CategoryForm setUpCategoryForm() {

        return new CategoryForm();
    }

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		logger.info("Welcome home! The client locale is {}.", locale);

		// カテゴリを取得
		categoryMap= mKbnService.init("PROD_CATEGORY");

		model.addAttribute("categoryMap", categoryMap );

		return "home";
	}

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(Locale locale, Model model) {

		logger.info("category()呼び出し");


		return "category";
	}
}
