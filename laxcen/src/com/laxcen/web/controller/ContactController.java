package com.laxcen.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.laxcen.service.ContactService;
import com.laxcen.service.MediaService;

public class ContactController implements Controller {
	
	private ContactService contactService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Map<String, Object> model = new HashMap<String, Object>();
		return new ModelAndView("contactus",model);
	}

	public void setContactService(ContactService contactService) {
		this.contactService = contactService;
	}
	

}
