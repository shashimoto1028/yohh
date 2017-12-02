package com.example.test.service;

import java.util.List;

import com.example.test.persistence.entity.ProdResult;

public interface ProdResultService {

	public List<ProdResult> selectNewProd();

	public ProdResult checkProd(String prod_cd);

}
