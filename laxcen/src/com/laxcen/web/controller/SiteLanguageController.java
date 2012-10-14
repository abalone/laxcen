/**
 * 
 */
package com.laxcen.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.laxcen.service.LocaleService;

/**
 * @author abalone
 *
 */
public class SiteLanguageController implements Controller{
	
	private LocaleService localeService;

	@Override
	public ModelAndView handleRequest(HttpServletRequest httpservletrequest,
			HttpServletResponse httpservletresponse) throws Exception {
		
		return new ModelAndView("siteLanguage","language",localeService.getLocaleString(httpservletrequest));
	}

	public void setLocaleService(LocaleService localeService) {
		this.localeService = localeService;
	}

}
