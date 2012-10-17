package com.laxcen.service;

import com.laxcen.common.Menu;

public class MediaService implements BasicService {

	@Override
	public int getMenuId() {
		return Menu.MEDIA.ordinal();
	}

	@Override
	public String getServiceName() {
		return Menu.MEDIA.name();
	}

}
