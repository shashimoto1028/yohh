package com.example.test.persistence;

import com.example.test.persistence.entity.ContentResult;

public interface SelectContentMapper {
	public ContentResult selectContent(int id);
}