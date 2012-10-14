package com.laxcen.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.laxcen.service.CompanyService;

public class CompanyController implements Controller {
	
	private CompanyService companyService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return new ModelAndView("company","menuId",companyService.getMenuId());
	}

	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}
	

}
