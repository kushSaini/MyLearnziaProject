package com.learnzia.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.learnzia.model.SessionModel;

public class SessionDAOImpl implements SessionDAO{

	public boolean addSession(SessionModel ses) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session s = sessionFactory.getCurrentSession();
		Transaction tx = s.beginTransaction();
		s.save(ses);
		tx.commit();
		return true;
	}

	@Override
	public boolean deleteSession(int id) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session s = sessionFactory.getCurrentSession();
		Transaction tx = s.beginTransaction();
		SessionModel session=(SessionModel)s.get(SessionModel.class, id);
		s.delete(session);
		tx.commit();
		return true;
	}
}
