package com.laxcen.web.controller;

import java.util.HashMap;
import java.util.Map;

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
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("menuId", companyService.getMenuId());
		model.put("menu", companyService.getServiceName());
		return new ModelAndView("company",model);
	}

	public void setCompanyService(CompanyService companyService) {
		this.companyService = companyService;
	}
	

}
