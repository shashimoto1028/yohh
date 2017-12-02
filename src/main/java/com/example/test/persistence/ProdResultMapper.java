package com.example.test.persistence;

import java.util.List;

import com.example.test.persistence.entity.ProdResult;

public interface ProdResultMapper {

	public List<ProdResult> selectNewProdList();

	public ProdResult checkProd(String prod_cd);
}
