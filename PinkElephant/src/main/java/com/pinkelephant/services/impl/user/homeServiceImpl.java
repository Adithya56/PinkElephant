package com.pinkelephant.services.impl.user;

import java.util.Collections;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.pinkelephant.controllers.user.homeController;
import com.pinkelephant.daos.user.homeDAO;
import com.pinkelephant.services.user.homeServices;

@Component
public class homeServiceImpl implements homeServices{
	@Autowired
	private homeDAO hdao;

	private static final Logger logger = LoggerFactory.getLogger(homeServices.class);
	
	@Override
	public String getServicesOnCategory(String category) {
		logger.info("PinkElephant.homeServiceImpl: getServicesOnCategory()");
		
		String services = StringUtils.EMPTY;
		List<String> servicesList = Collections.emptyList();
		try {
			servicesList = hdao.getServicesOnCategory(category);
		} catch (Exception e) {
			e.printStackTrace();
		}
		services = String.join(",", servicesList);
		return services;
	}

}
