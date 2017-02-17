package com.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.model.Category;

@Repository
public class CategoryDAOimpl implements CategoryDAO
{
	@Autowired
	private SessionFactory sessionFactory;
	@Transactional
	public List<Category> getcatgories() {
		Session session = sessionFactory.openSession();
		//Query query = session.createQuery("from Category");
		List<Category> categories= session.createQuery("from Category").list();
		session.close();
		return categories;
	}
}
