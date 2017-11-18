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

@Controller
public class LogoutController {

	private static final Logger logger = LoggerFactory.getLogger(LogoutController.class);

	@Autowired
	HttpSession session;


	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Locale locale, Model model) {

		logger.info("Welcome logout! The client locale is {}.", locale);

		session.invalidate();

		return "redirect:/";
	}

}
