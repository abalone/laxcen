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
public class FAQGroupTest {

	@Autowired
	private SessionFactory sessionFactory;
	
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
}
