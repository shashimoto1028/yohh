
package com.example.test.service;

import java.util.Map;

import com.example.test.persistence.entity.MKbn;

public interface MKbnService {

	public Map<Integer, MKbn> init(String kbnId);

}