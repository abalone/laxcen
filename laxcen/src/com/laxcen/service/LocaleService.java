/**
 * 
 */
package com.laxcen.service;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.google.common.collect.ImmutableMap;
import com.laxcen.common.Menu;

/**
 * @author abalone
 * 
 */
public class LocaleService implements BasicService{
	
	final static Logger logger = LoggerFactory.getLogger(LocaleService.class);
	
	private final static ImmutableMap<String,String> siteLanguagePickerMap = ImmutableMap.of("zh_CN","en_US","en_US","zh_CN");

	public String getLocaleString(HttpServletRequest request) {
		Locale locale = RequestContextUtils.getLocaleResolver(request)
				.resolveLocale(request);
		logger.warn("Get Locale String: {}_{}",locale.getLanguage(), locale.getCountry());
		if (locale != null) {
			return String.format("?%s=%s", "siteLanguage",
					siteLanguagePickerMap.get(locale.getLanguage()+"_"+locale.getCountry()));
		}
		return "";
	}

	@Override
	public int getMenuId() {
		// TODO Auto-generated method stub
		return Menu.EMPTY.ordinal();
	}

	@Override
	public String getServiceName() {
		// TODO Auto-generated method stub
		return "Locale Service";
	}
}
