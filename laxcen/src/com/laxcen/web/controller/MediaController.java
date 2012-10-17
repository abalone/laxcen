package com.laxcen.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.laxcen.service.MediaService;

public class MediaController implements Controller {
	
	private MediaService mediaService;
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return new ModelAndView("media","menuId",mediaService.getMenuId());
	}

	public void setMediaService(MediaService mediaService) {
		this.mediaService = mediaService;
	}
	

}
