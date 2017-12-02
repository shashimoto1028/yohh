package com.example.test.controller.form;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class RegistMemberForm {

	@NotEmpty(message = "氏名を入力してください")
	@Size(min = 1, max = 100)
	private String name;

	@NotEmpty(message = "フリガナを入力してください")
	@Size(min = 1, max = 100)
	private String kana;

	@NotEmpty(message = "誕生日を入力してください")
	private String birthday;

	@NotEmpty(message = "郵便番号を入力してください")
	@Pattern(regexp="[0-9]{3}-[0-9]{4}",message="数字で入力してください：形式○○○-○○○○")
	private String zip;

	@NotEmpty(message = "住所を入力してください")
	@Size(min = 1, max = 300)
	private String address;

	@NotEmpty(message = "電話番号を入力してください")
	@Pattern(regexp="[0-9]{1,11}",message="11桁までの数字で入力してください。")
	private String tel;

	@NotEmpty(message = "メールアドレスを入力してください")
	@Email(message="形式が違います。")
	private String mail;

	@NotEmpty(message = "パスワードを入力してください")
	@Pattern(regexp="[0-9a-zA-Z]{1,100}",message="英数字で入力してください。(100桁まで)")
	private String password;

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getKana() {
		return kana;
	}
	public void setKana(String kana) {
		this.kana = kana;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
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
