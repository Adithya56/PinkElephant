package com.pinkelephant.services.impl.user;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.pinkelephant.daos.user.homeDAO;
import com.pinkelephant.services.user.homeServices;

@Component
public class homeServiceImpl implements homeServices{
	@Autowired
	private homeDAO hdao;

	@Override
	public List<String> getServicesOnCategory(String category) {
		String services;
		List<String> servicesList = new ArrayList<>();
		try {
			services = hdao.getServicesOnCategory(category);
			servicesList= Arrays.asList(services.split(","));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return servicesList;
	}

}
