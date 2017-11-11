package com.example.test.controller;

import java.util.Locale;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.test.controller.form.LoginForm;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@ModelAttribute
    public LoginForm setUpLoginForm() {
        return new LoginForm();
    }

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String init(Locale locale, Model model) {

		logger.info("Welcome login! The client locale is {}.", locale);
		return "login";
	}


	@RequestMapping(value = "/check", method = RequestMethod.POST)
	public String check(@Valid LoginForm form, BindingResult result, Locale locale, Model model) {

		logger.info("Welcome loginCheck! The client locale is {}.", locale);

		System.out.println(form.getMail());
		System.out.println(form.getPassword());

		if (result.hasErrors()) { // (2)
            return "login";
        }
//		// カテゴリを取得
//		categoryMap= mKbnService.init("PROD_CATEGORY");
//
//		// 新商品の取得
//		newProdList = prodResultService.selectNewProd();
//
//		model.addAttribute("categoryMap", categoryMap );
//		model.addAttribute("newProdList", newProdList );

		return "redirect:/";
	}
}
