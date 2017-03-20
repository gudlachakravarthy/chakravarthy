package com.dao;

import com.model.Cart;
import com.model.CartItem;

public interface CartItemDAO
{
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItem);
	 void removeCartItem(CartItem cartItem);
	 void removeAllCartItems(Cart cart);
}
