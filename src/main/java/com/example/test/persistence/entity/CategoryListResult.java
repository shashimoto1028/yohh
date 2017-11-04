package com.example.test.persistence.entity;

import java.math.BigDecimal;
import java.sql.Date;

public class CategoryListResult {

	private int categorydiv;
	private String artistNameKj;
	private String artistNameKn;
	private Date salesStartDate;
	private BigDecimal dispPrice;


	public int getCategorydiv() {
		return categorydiv;
	}
	public void setCategorydiv(int categorydiv) {
		this.categorydiv = categorydiv;
	}
	public String getArtistNameKj() {
		return artistNameKj;
	}
	public void setArtistNameKj(String artistNameKj) {
		this.artistNameKj = artistNameKj;
	}
	public String getArtistNameKn() {
		return artistNameKn;
	}
	public void setArtistNameKn(String artistNameKn) {
		this.artistNameKn = artistNameKn;
	}
	public Date getSalesStartDate() {
		return salesStartDate;
	}
	public void setSalesStartDate(Date salesStartDate) {
		this.salesStartDate = salesStartDate;
	}
	public BigDecimal getDispPrice() {
		return dispPrice;
	}
	public void setDispPrice(BigDecimal dispPrice) {
		this.dispPrice = dispPrice;
	}









}
