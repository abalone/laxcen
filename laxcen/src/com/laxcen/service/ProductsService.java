package com.laxcen.service;

import com.laxcen.common.Menu;

public class ProductsService implements BasicService{

	@Override
	public int getMenuId() {
		return Menu.PRODUCTS.ordinal();
	}

	@Override
	public String getServiceName() {
		return Menu.PRODUCTS.name();
	}


}
