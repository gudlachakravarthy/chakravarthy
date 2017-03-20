package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Cart;
import com.model.Customer;
import com.service.CustomerService;

public class CustomerOrdecontroller {
	
	@Autowired
	  private CustomerService customerService;
	
@RequestMapping("/before")
public String cartBefore(){
	
	System.out.println("-------"+CartItemcontroller.listproduct.size());
	 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	 String name = auth.getName();
	 
	 if(CartItemcontroller.norepeat.size()!=0 && name!="anonymousUser"){
		 return "redirect:/updatecheckout";
	 }	
		return "redirect:/getcartId";
	}

@RequestMapping("/getcartId")
public String getCartId(){
	 System.out.println("hello---------------");
	  User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	  String username = user.getUsername();
	  Customer customer = customerService.getCustomerByUsername(username);
	  Cart cart = customer.getCart();
	  int cartId = cart.getId();
	  
	  return "redirect:/order/"+cartId;
}

@RequestMapping("/order/{cartId}")
public String createOrder(@PathVariable int cartId){
		
	return "redirect:/checkout?cartId="+cartId;
}


	
}
