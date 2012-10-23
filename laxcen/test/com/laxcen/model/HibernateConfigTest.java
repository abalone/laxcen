/**
 * 
 */
package com.laxcen.model;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.is;

import java.util.List;
import java.util.Set;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.classic.Session;
import org.hibernate.criterion.Restrictions;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
/**
 * @author abalone
 *
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ={"classpath:com/laxcen/model/appContext.xml"})
public class HibernateConfigTest {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Ignore
	@SuppressWarnings("unchecked")
	@Test
	public void testFAQGroup() {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		List<FAQGroup> groups = (List<FAQGroup>)session.createCriteria(FAQGroup.class).add(Restrictions.eq("title", "FAQ GROUP 2")).list();
		assertThat(groups.size(),is(equalTo(1)));
		FAQGroup group = groups.get(0);
		Set<FAQ> faqs = group.getFaqs();
		assertThat(faqs.size(),is(equalTo(2)));
		for(FAQ faq:faqs){
			System.out.println(faq.getTitle());
		}
		tx.commit();
	}
	
	@Ignore
	@SuppressWarnings("unchecked")
	@Test
	public void testImage() {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		List<Image> images = (List<Image>)session.createCriteria(Image.class).add(Restrictions.like("title", "image%")).list();
		assertThat(images.size(),is(equalTo(2)));
		for(Image img:images){
			System.out.println(img.getUri());
		}
		tx.commit();
	}
	
	@SuppressWarnings("unchecked")
	@Test
	public void testArticle() {
		Session session = sessionFactory.getCurrentSession();
		Transaction tx = session.beginTransaction();
		List<Article> articles = (List<Article>)session.createCriteria(Article.class).add(Restrictions.like("title", "article%")).list();
		System.out.println(articles.size());
		assertThat(articles.size(),is(equalTo(2)));
		
		Image image1 = articles.get(0).getImage();
		System.out.println(image1.getTitle());
		
		tx.commit();
	}
}
