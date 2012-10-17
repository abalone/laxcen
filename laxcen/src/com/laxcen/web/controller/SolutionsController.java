package com.laxcen.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.laxcen.service.SolutionsService;


public class SolutionsController implements Controller {
	
	private SolutionsService solutionsService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return new ModelAndView("solutions","menuId",solutionsService.getMenuId());
	}

	public void setSolutionsService(SolutionsService solutionsService) {
		this.solutionsService = solutionsService;
	}
	

}
