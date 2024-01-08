package com.pinkelephant.daos.impl.user;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import com.pinkelephant.daos.user.homeDAO;

@Component
public class homeDAOImpl implements homeDAO{

	@Override
	public String getServicesOnCategory(String category) {
		String services=StringUtils.EMPTY;
		return services;
	}
	
}
