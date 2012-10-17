package com.laxcen.web.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.laxcen.service.ProductsService;


public class ProductsController implements Controller {
	
	private ProductsService productsService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("menuId", productsService.getMenuId());
		model.put("menu", productsService.getServiceName());
		return new ModelAndView("products",model);
	}

	public void setProductsService(ProductsService productsService) {
		this.productsService = productsService;
	}
	

}
