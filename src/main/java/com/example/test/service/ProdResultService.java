package com.example.test.service;

import java.util.List;

import com.example.test.controller.form.SearchForm;
import com.example.test.persistence.entity.ProdResult;

public interface ProdResultService {

	public List<ProdResult> selectNewProd();

	public ProdResult checkProd(String prod_cd);

	//商品一覧取得
	public List<ProdResult> init(int categoryDiv);
	//検索処理
	public List<ProdResult> searchList(SearchForm searchForm);

}
