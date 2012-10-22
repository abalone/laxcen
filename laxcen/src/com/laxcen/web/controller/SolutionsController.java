package com.laxcen.web.controller;

import java.util.HashMap;
import java.util.Map;

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
		Map<String, Object> model = new HashMap<String, Object>();
		return new ModelAndView("solutions",model);
	}

	public void setSolutionsService(SolutionsService solutionsService) {
		this.solutionsService = solutionsService;
	}
	

}
