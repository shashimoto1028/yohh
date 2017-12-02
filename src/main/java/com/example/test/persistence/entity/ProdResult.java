package com.example.test.persistence.entity;

import java.math.BigDecimal;
import java.util.Date;

public class ProdResult {

	private String prod_cd;

	private String hinban_cd;

	private String artist_cd;

	private int category_div;

	private String prod_name;

	private BigDecimal disp_price;

	private String img_path;

	private Date sales_start_date;

	private Date sales_end_date;

	private String artist_name_kj;

	private int stock;

	private int provision;

	public String getProd_cd() {
		return prod_cd;
	}

	public void setProd_cd(String prod_cd) {
		this.prod_cd = prod_cd;
	}

	public String getHinban_cd() {
		return hinban_cd;
	}

	public void setHinban_cd(String hinban_cd) {
		this.hinban_cd = hinban_cd;
	}

	public String getArtist_cd() {
		return artist_cd;
	}

	public void setArtist_cd(String artist_cd) {
		this.artist_cd = artist_cd;
	}

	public int getCategory_div() {
		return category_div;
	}

	public void setCategory_div(int category_div) {
		this.category_div = category_div;
	}

	public String getProd_name() {
		return prod_name;
	}

	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}

	public BigDecimal getDisp_price() {
		return disp_price;
	}

	public void setDisp_price(BigDecimal disp_price) {
		this.disp_price = disp_price;
	}

	public String getImg_path() {
		return img_path;
	}

	public void setImg_path(String img_path) {
		this.img_path = img_path;
	}

	public Date getSales_start_date() {
		return sales_start_date;
	}

	public void setSales_start_date(Date sales_start_date) {
		this.sales_start_date = sales_start_date;
	}

	public Date getSales_end_date() {
		return sales_end_date;
	}

	public void setSales_end_date(Date sales_end_date) {
		this.sales_end_date = sales_end_date;
	}

	public String getArtist_name_kj() {
		return artist_name_kj;
	}

	public void setArtist_name_kj(String artist_name_kj) {
		this.artist_name_kj = artist_name_kj;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getProvision() {
		return provision;
	}

	public void setProvision(int provision) {
		this.provision = provision;
	}

}
