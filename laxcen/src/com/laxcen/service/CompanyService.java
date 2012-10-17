package com.laxcen.service;

import com.laxcen.common.Menu;

public class CompanyService implements BasicService{
	
	@Override
	public int getMenuId(){
		return Menu.COMPANY.ordinal();
	}
	
	@Override
	public String getServiceName(){
		return Menu.COMPANY.name();
	}
}
