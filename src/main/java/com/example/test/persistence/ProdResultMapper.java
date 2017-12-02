package com.example.test.persistence;

import java.util.List;

import com.example.test.controller.form.SearchForm;
import com.example.test.persistence.entity.ProdResult;

public interface ProdResultMapper {

	public List<ProdResult> selectNewProdList();

	public ProdResult checkProd(String prod_cd);

//	商品一覧取得
	public List<ProdResult> selectCategoryList(int CategoryDiv);

//	検索処理
	public List<ProdResult> selectSearchList(SearchForm searchForm);
}
