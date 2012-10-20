/**
 * 
 */
package com.laxcen.model;

import java.util.Set;

/**
 * @author abalone
 * 
 */
public class FAQGroup implements Identifier, Describable {

	private int id;
	private String description;
	private String title;
	private Set<FAQ> faqs;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Set<FAQ> getFaqs() {
		return faqs;
	}

	public void setFaqs(Set<FAQ> faqs) {
		this.faqs = faqs;
	}
	
}
