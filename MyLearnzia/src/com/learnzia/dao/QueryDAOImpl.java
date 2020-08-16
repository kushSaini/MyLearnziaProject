package com.learnzia.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.learnzia.model.QueryTable;

public class QueryDAOImpl implements QueryDAO{

	@Override
	public boolean insertQuery(QueryTable query) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		session.save(query);
		tx.commit();
		return true;
	}

	@Override
	public List<QueryTable> displayAllQuery() {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		Query query = session.createQuery("from QueryTable");
        List<QueryTable> list= query.list();
        tx.commit();
		return list;
	}

}
