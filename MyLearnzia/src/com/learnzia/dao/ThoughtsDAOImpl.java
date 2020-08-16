package com.learnzia.dao;

import java.util.Random;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.learnzia.model.Thoughts;

public class ThoughtsDAOImpl implements ThoughtsDAO{

	@Override
	public String retriveThoughts() {
		Random rand=new Random();
		int random_id=rand.nextInt(20);
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		Thoughts th=(Thoughts)session.get(Thoughts.class, random_id);
		String thought=th.getThought();
		tx.commit();
		return thought;
	}
}
