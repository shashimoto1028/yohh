package com.example.test.controller.form;

import java.io.Serializable;

import org.hibernate.validator.constraints.NotEmpty;


public class LoginForm implements Serializable {

	@NotEmpty(message = "メールアドレスを入力してください")
	private String mail;

	@NotEmpty(message = "パスワードを入力してください")
	private String password;

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
