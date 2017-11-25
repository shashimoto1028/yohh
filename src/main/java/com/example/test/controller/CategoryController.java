package com.example.test.controller;

import java.util.List;
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
import com.example.test.controller.form.SearchForm;
import com.example.test.persistence.entity.CategoryListResult;
import com.example.test.persistence.entity.MKbn;
import com.example.test.service.CategoryService;
import com.example.test.service.MKbnService;
import com.example.test.service.SearchService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class CategoryController {

	private static final Logger logger = LoggerFactory.getLogger(CategoryController.class);

	// 追加
	@Autowired
	MKbnService mKbnService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	SearchService searchService;

	//カテゴリのマップ
	Map<Integer, MKbn> categoryMap;

	//カテゴリリスト「
	List<CategoryListResult> categoryList;

	@ModelAttribute
    public CategoryForm setUpCategoryForm() {

        return new CategoryForm();
    }
	@ModelAttribute
    public SearchForm setUpSerachForm() {

        return new SearchForm();
    }

	@RequestMapping(value = "/category", method = RequestMethod.GET)
	public String category(@RequestParam(value="category_id",required = false) int categoryDiv,Locale locale, Model model) {

		logger.info("category()呼び出し");
		System.out.println(categoryDiv);

		// カテゴリを取得
		categoryMap= mKbnService.init("PROD_CATEGORY");

		// カテゴリリストの取得
		categoryList= categoryService.init(categoryDiv);

//		  for (CategoryListResult str : categoryList) {
//		      System.out.println(str.getArtistNameKj());  // 結果：Windows、Linux、 OS X
//		    }

		model.addAttribute("categoryMap", categoryMap );
		model.addAttribute("categoryList", categoryList );

		return "category";
	}

	//検索ボタン押下時の処理
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(SearchForm searchForm,Model model) {
		categoryList = searchService.init(searchForm);

		model.addAttribute("categoryList", categoryList );

		return "category";
	}


}
