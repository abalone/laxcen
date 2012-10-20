package com.laxcen.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;

import com.laxcen.service.LocaleService;

public class LocaleAccessInterceptor extends HandlerInterceptorAdapter {
	
	final static Logger logger = LoggerFactory.getLogger(LocaleAccessInterceptor.class);
	
	private CookieLocaleResolver localeResolver;

	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		logger.info("INBOUND REQUEST");
		return true;
	}

	public void setLocaleResolver(CookieLocaleResolver localeResolver) {
		this.localeResolver = localeResolver;
	}

}
