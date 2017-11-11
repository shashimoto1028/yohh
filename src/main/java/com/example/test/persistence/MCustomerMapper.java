package com.example.test.persistence;

import com.example.test.controller.form.LoginForm;
import com.example.test.persistence.entity.MCustomer;

public interface MCustomerMapper {

	public MCustomer selectCustomer(LoginForm form);
}
