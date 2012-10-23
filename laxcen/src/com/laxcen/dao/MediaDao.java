/**
 * 
 */
package com.laxcen.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.laxcen.model.Article;

/**
 * @author abalone
 * 
 */
public class MediaDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public MediaDao(){
		System.out.println("lalala");
	}
	
	public List<Article> retrieveAllArticles() {

		if(sessionFactory==null){
			System.out.println("null!!!!");
		}
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();

		List<Article> articles = (List<Article>) session.createQuery(
				"from Article a").list();
		tx.commit();
		return articles;

	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		System.out.println("do set Session Factory");
		System.out.println("set to " + sessionFactory.toString());
		this.sessionFactory = sessionFactory;
	}
	
	
}
