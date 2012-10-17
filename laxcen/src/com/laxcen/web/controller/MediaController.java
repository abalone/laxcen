package com.laxcen.web.controller;

import java.util.HashMap;
import java.util.Map;

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
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("menuId", mediaService.getMenuId());
		model.put("menu", mediaService.getServiceName());
		return new ModelAndView("media",model);
	}

	public void setMediaService(MediaService mediaService) {
		this.mediaService = mediaService;
	}
	

}
