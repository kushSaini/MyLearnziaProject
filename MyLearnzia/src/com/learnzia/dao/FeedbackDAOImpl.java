package com.learnzia.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.learnzia.model.Feedback;

public class FeedbackDAOImpl implements FeedbackDAO{

	@Override
	public boolean insertFeedback(Feedback feed) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session s = sessionFactory.getCurrentSession();
		Transaction tx = s.beginTransaction();
		int i=(int) s.save(feed);
		tx.commit();
		if(i>0) {
			return true;
		}
		else {
			return false;
		}
	}

	
}
