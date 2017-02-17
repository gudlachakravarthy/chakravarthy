package com.dao;

import java.util.List;

import com.model.Product;

public interface ProductDAO
{
	Product saveproduct(Product product);
	List<Product> getallproducts();

	Product getproductByID(int id);
	
	void deleteProduct(int id);
	void updateProduct(Product product);
}
