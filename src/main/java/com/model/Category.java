package com.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="category")
public class Category
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@OneToMany(mappedBy="category")
	private List<Product> product;
	
	private String categorydetails;
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public String getcategorydetails()
	{
		return categorydetails;
	}
	public void setCategorydetails(String categorydetails)
	{
		this.categorydetails = categorydetails;
	}
	public List<Product> getProduct()
	{
		return product;
	}
	public void setPrduct(List<Product> product)
	{
		this.product = product;
	}
	public String tostring()
	{
		return this.categorydetails;
	}
}
