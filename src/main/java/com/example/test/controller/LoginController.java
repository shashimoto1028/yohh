package com.example.test.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.test.controller.form.LoginForm;
import com.example.test.persistence.entity.MCustomer;
import com.example.test.service.MCustomerService;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	MCustomerService mCutomerService;

	@Autowired
	HttpSession session;

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

		if (result.hasErrors()) { // (2)
            return "login";
        }

		//検索
		MCustomer customer = mCutomerService.serchCustomer(form);
		String  message = "";

		if (null == customer) {
			message = "アカウントが存在しません。";
			model.addAttribute("message", message);
			return "login";
		}

		// セッションへ保存
		session.setAttribute("customer", customer);

		return "redirect:/";
	}
}
