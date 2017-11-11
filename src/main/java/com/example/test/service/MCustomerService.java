package com.example.test.service;

import com.example.test.controller.form.LoginForm;
import com.example.test.persistence.entity.MCustomer;

public interface MCustomerService {

	public MCustomer serchCustomer(LoginForm form);

}
