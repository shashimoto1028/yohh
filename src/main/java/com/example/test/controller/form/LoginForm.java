package com.example.test.controller.form;

import java.io.Serializable;

import javax.validation.constraints.NotNull;

public class LoginForm implements Serializable {

	@NotNull
	private String e_mail;

	@NotNull
	private String password;

	public String getE_mail() {
		return e_mail;
	}

	public void setE_mail(String e_mail) {
		this.e_mail = e_mail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
