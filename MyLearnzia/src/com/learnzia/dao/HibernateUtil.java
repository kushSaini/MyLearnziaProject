package com.learnzia.dao;

import org.hibernate.SessionFactory;
//import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import com.learnzia.model.*;


public class HibernateUtil {

	private static SessionFactory sessionFactory;
	
	private static SessionFactory buildSessionFactory() {
        try {
        	
        	Configuration configuration=new Configuration();
    		configuration.configure("hibernate.cfg.xml");
    		configuration.addAnnotatedClass(Thoughts.class);
    		configuration.addAnnotatedClass(SessionModel.class);
    		configuration.addAnnotatedClass(Feedback.class);
    		configuration.addAnnotatedClass(QueryTable.class);
    		 sessionFactory=configuration.buildSessionFactory();
            return sessionFactory;
        }
        catch (Throwable ex) {
            System.err.println("Initial SessionFactory creation failed." + ex);
            ex.printStackTrace();
            throw new ExceptionInInitializerError(ex);
        }
    }
	
	public static SessionFactory getSessionFactory() {
		if(sessionFactory == null) sessionFactory = buildSessionFactory();
        return sessionFactory;
    }
}