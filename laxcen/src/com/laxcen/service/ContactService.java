package com.laxcen.service;

import com.laxcen.common.Menu;

public class ContactService implements BasicService {
	
	@Override
	public int getMenuId(){
		return Menu.CONTACTUS.ordinal();
	}
	
	@Override
	public String getServiceName(){
		return Menu.CONTACTUS.name();
	}
}
