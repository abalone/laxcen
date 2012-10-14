/**
 * 
 */
package com.laxcen.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.laxcen.service.LaxcenService;

/**
 * @author abalone
 *
 */
public class LaxcenController implements Controller {

	private LaxcenService laxcenService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return new ModelAndView("index","laxcen",laxcenService.service());
	}

	public void setLaxcenService(LaxcenService laxcenService) {
		this.laxcenService = laxcenService;
	}
	
}
