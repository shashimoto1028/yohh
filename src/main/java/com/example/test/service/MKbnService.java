
package com.example.test.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.example.test.persistence.entity.MKbn;

@Service
public interface MKbnService {

	public Map<Integer, MKbn> init(String kbnId);

}