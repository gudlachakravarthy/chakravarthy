package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CartDAO;
import com.model.Cart;

@Service
public class CartServiceimpl implements CartService {
	@Autowired
	private CartDAO cartDao;

	
	public Cart getCart(int cartId) {
		return cartDao.getCart(cartId);
	}
}
