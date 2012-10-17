package com.laxcen.service;

import com.laxcen.common.Menu;

public class SolutionsService implements BasicService{

	@Override
	public int getMenuId() {
		return Menu.SOLUTIONS.ordinal();
	}

	@Override
	public String getServiceName() {
		return Menu.SOLUTIONS.name();
	}
	
}
