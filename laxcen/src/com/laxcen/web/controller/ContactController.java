package com.laxcen.web.controller;

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
		return new ModelAndView("contactus","menuId",contactService.getMenuId());
	}

	public void setContactService(ContactService contactService) {
		this.contactService = contactService;
	}
	

}
