package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CartItemDAO;
import com.model.Cart;
import com.model.CartItem;


@Service
public class CartItemServiceimpl implements CartItemService
{
	@Autowired
	private CartItemDAO cartItemDao;
	
	public void addCartItem(CartItem cartItem) {
		cartItemDao.addCartItem(cartItem);
		}
	@Override
	public CartItem getCartItem(int cartItemId) {
		return cartItemDao.getCartItem(cartItemId);
	}

	@Override
	public void removeCartItem(CartItem cartItem) {
		cartItemDao.removeCartItem(cartItem);
	}

	@Override
	public void removeAllCartItems(Cart cart) {
		cartItemDao.removeAllCartItems(cart);
	}
}
