/**
 * 
 */
package com.laxcen.web.controller;

import java.util.HashMap;
import java.util.Map;

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
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("menuId", laxcenService.getMenuId());
		model.put("menu", laxcenService.getServiceName());
		return new ModelAndView("index",model);
	}

	public void setLaxcenService(LaxcenService laxcenService) {
		this.laxcenService = laxcenService;
	}
	
}
