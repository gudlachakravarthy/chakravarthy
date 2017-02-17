package com.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.service.CategoryService;

@Controller
public class Homecontroller
{
	@Autowired
	private CategoryService categoryservice;
	public Homecontroller()
	{
		System.out.println("i am running");
	}

	@RequestMapping("/home")
	public String home(HttpSession session)
	{
        session.setAttribute("categories", categoryservice.getcategories());
		return "home";
	}

	@RequestMapping("/aboutus")
	public String aboutus() {
		return "aboutus";
	}
}