package com.example.test.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test.controller.form.SearchForm;
import com.example.test.persistence.ProdResultMapper;
import com.example.test.persistence.entity.ProdResult;

@Service
public class ProdResultServiceImpl implements ProdResultService{

	private static final Logger logger = LoggerFactory.getLogger(ProdResultServiceImpl.class);

	@Autowired
	ProdResultMapper prodResultMapper;

	@Override
	public List<ProdResult> selectNewProd() {
		// TODO 自動生成されたメソッド・スタブ

//		List<ProdResult> result = new ArrayList<>();
//		result = prodResultMapper.selectNewProdList();
		return prodResultMapper.selectNewProdList();
	}

	@Override
	public ProdResult checkProd(String prod_cd) {
		// TODO 自動生成されたメソッド・スタブ
		return prodResultMapper.checkProd(prod_cd);
	}

	//商品一覧取得
	@Override
	public List<ProdResult> init(int categoryDiv) {
		// TODO 自動生成されたメソッド・スタブ
		return prodResultMapper.selectCategoryList(categoryDiv);
	}

	//検索処理
	@Override
	public List<ProdResult> searchList(SearchForm searchForm){
	// TODO 自動生成されたメソッド・スタブ
	return prodResultMapper.selectSearchList(searchForm);
	}

}
