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
import org.springframework.web.bind.annotation.RequestParam;

import com.example.test.controller.form.CategoryForm;
import com.example.test.persistence.entity.CategoryListResult;
import com.example.test.service.CategoryService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class CategoryController {

	private static final Logger logger = LoggerFactory.getLogger(CategoryController.class);

	// 追加
	@Autowired
	CategoryService categoryService;

	//カテゴリのマップ
	Map<Integer, CategoryListResult> categoryList;

	@ModelAttribute
    public CategoryForm setUpCategoryForm() {

        return new CategoryForm();
    }

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(@RequestParam(value="category_id",required = false) int categoryDiv,Locale locale, Model model) {

		logger.info("category()呼び出し");
		System.out.println("橋本");
		System.out.println(categoryDiv);

		categoryList= categoryService.init(categoryDiv);


		model.addAttribute("categoryList", categoryList );

		return "category";
	}
}