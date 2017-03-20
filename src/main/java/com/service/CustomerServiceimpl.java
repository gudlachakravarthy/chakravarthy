package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CustomerDAO;
import com.model.Customer;

@Service
public class CustomerServiceimpl implements CustomerService
{
    @Autowired
	private CustomerDAO customerDao;
	@Override
	public void saveCustomer(Customer customer) 
	{
	    customerDao.saveCustomer(customer);	
	}
	public Customer getCustomerByUsername(String username)
	{
		 return customerDao.getCustomerByUsername(username);
	 }
}
