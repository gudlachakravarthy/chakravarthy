package com.dao;

import com.model.Customer;

public interface CustomerDAO
{
	void saveCustomer(Customer customer);
	Customer getCustomerByUsername(String username);
}
