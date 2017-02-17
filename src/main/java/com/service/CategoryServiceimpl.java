package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CategoryDAO;
import com.model.Category;

@Service
public class CategoryServiceimpl implements CategoryService
{
	@Autowired
	private CategoryDAO categorydao;
	@Transactional
	public List<Category> getcategories() {
		return categorydao.getcatgories();
	}
}
