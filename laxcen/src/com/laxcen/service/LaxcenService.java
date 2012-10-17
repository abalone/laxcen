/**
 * 
 */
package com.laxcen.service;

import com.laxcen.common.Menu;

/**
 * @author abalone
 *
 */
public class LaxcenService implements BasicService{
	
	@Override	
	public int getMenuId(){
		return Menu.LAXCEN.ordinal();
	}

	@Override
	public String getServiceName() {
		return Menu.LAXCEN.name();
	}
}
