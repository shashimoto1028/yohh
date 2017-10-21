
package com.example.test.service;

import java.util.Map;

import com.example.test.persistence.entity.ContentResult;

public interface MKbnService {

	public Map<Integer, ContentResult> init(String kbnId);

}