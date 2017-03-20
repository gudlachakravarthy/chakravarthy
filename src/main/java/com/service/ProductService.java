package com.service;

import java.util.List;

import com.model.Product;

public interface ProductService
{
	Product saveproduct(Product product);

	List<Product> getallproducts();

	Product getproductByID(int id);
	
	void deleteProduct(int id);
	
	void updateProduct(Product product);
	
	byte[] loadImage(int productid);
	
	List<Product> getProductByDiscount();
}
