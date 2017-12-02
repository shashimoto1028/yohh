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

import com.example.test.controller.form.RegistMemberForm;
import com.example.test.persistence.entity.MCustomer;
import com.example.test.service.RegistMemberServiceImpl;

/**
 * Handles requests for the application home page.
 */
@Controller
public class RegistMemberController {

	private static final Logger logger = LoggerFactory.getLogger(RegistMemberController.class);

	@Autowired
	RegistMemberServiceImpl registMemberServiceImpl;

	@Autowired
	HttpSession session;

	//これのおかげで画面からパラメータを受け取れる
	@ModelAttribute
	public RegistMemberForm setUpRegistMemberForm() {
		return new RegistMemberForm();
	}

	//会員登録画面の初期表示
	@RequestMapping(value = "/registMember", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "registMember";
	}

	//会員情報の登録処理
	@RequestMapping(value = "/registMemberInsert", method = RequestMethod.POST)
	public String registMemberInsert(@Valid RegistMemberForm form, BindingResult result) {
		logger.info("会員登録：開始");

		//入力情報のチェック（チェック内容はRegistMemberFormにアノテーションでかいてる）
		if (result.hasErrors()) {
			logger.info("入力エラー");
			return "registMember";
		}

		int count = registMemberServiceImpl.regsitMember(form);
		if(count == 1) {
			logger.info("登録OK");
			//登録が成功したタイミングでセッションに会員情報を追加
			session.setAttribute("customer", replaceInstance(form));
		}else {
			logger.info("登録NG");
		}

		logger.info("会員登録：終了");

		return "registMemberEnd";
	}

	//入力フォーム情報をMcutomerクラスのインスタンスに詰める処理
	private MCustomer replaceInstance(RegistMemberForm form) {
		MCustomer mcustomer = new MCustomer();
		mcustomer.setCustomer_name_kj(form.getName());
		mcustomer.setCustomer_name_kn(form.getKana());
		mcustomer.setAddress(form.getAddress());
		mcustomer.setMail_address(form.getMail());
		mcustomer.setTel_no(form.getTel());
		mcustomer.setZip_cd(form.getZip());
		mcustomer.setPassword(form.getPassword());

		return mcustomer;
	}

}
