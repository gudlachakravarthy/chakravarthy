package com.controller;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.model.Customer;
import com.service.CustomerService;

@Controller
public class Customercontroller
{
	@Autowired
	private CustomerService customerService;
	@RequestMapping("/all/registrationForm")
	public String getRegistrationForm(Model model)
	{
		model.addAttribute("customer",new Customer());
		return "registerCustomer";
	}
	@RequestMapping("/all/registerCustomer")
	public String registerCustomer(@Valid @ModelAttribute(value="customer") Customer customer,BindingResult result,Model model)
	{
		if(result.hasErrors())
			return "registerCustomer";
		try
		{
		customerService.saveCustomer(customer);
		}
		catch(Exception e)
		{
			model.addAttribute("duplicateUsername","Username already exists. Please enter different username");
			System.out.println("Exception is " + e.getMessage());
			return "registerCustomer";
		}
		model.addAttribute("registersuccess","registration was sucessful...please login with new username and password");
		  return "login";
	}
}