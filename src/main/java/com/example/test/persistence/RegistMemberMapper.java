package com.example.test.persistence;

import com.example.test.persistence.entity.Customer;

public interface RegistMemberMapper{
	int insertMember(
		Customer customer
	);
}