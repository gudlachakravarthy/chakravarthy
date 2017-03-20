package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Cart;
@Repository
public class CartDAOimpl implements CartDAO {

	@Autowired
    private SessionFactory sessionFactory;

	public Cart getCart(int cartId) {
		Session session = sessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class, cartId);
		session.close();
		return cart;
	}

}
