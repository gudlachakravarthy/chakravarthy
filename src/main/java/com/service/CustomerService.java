package com.service;

import com.model.Customer;

public interface CustomerService
{
	void saveCustomer(Customer customer);
	Customer getCustomerByUsername(String username);
}
