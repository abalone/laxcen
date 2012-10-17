package com.laxcen.web.controller;

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
		return new ModelAndView("products","menuId",productsService.getMenuId());
	}

	public void setProductsService(ProductsService productsService) {
		this.productsService = productsService;
	}
	

}
