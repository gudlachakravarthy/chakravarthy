package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductDAO;
import com.model.Product;

@Service
public class ProductServiceImpl implements ProductService
{
	@Autowired
	private ProductDAO productdao;
	public ProductServiceImpl()
	{
		System.out.println("creating insance for productserviceimpl");
	}
	public Product saveproduct(Product product)
	{
		return productdao.saveproduct(product);
	}
	public List<Product> getallproducts()
	{
		return productdao.getallproducts();
	}
    public Product getproductByID(int id)
	{
		return productdao.getproductByID(id);
	}
    public void deleteProduct(int id)
    {
		productdao.deleteProduct(id);
	}
	public void updateProduct(Product product)
	{
		productdao.updateProduct(product);
	}
	public byte[] loadImage(int productid)
	{
		return productdao.loadImage(productid);
	}
	public List<Product> getProductByDiscount()
	{
		return productdao.getProductByDiscount();
	}
}
