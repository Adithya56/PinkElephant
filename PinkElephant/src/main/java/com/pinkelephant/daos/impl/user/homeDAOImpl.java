package com.pinkelephant.daos.impl.user;

import java.util.Collections;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.pinkelephant.controllers.user.homeController;
import com.pinkelephant.daos.user.homeDAO;

@Component
public class homeDAOImpl implements homeDAO{
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	public homeDAOImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	private static final Logger logger = LoggerFactory.getLogger(homeDAO.class);
	private String get_services = "select services from services where category = ?";
	
	@Override
	public List<String> getServicesOnCategory(String category) {
		logger.info("PinkElephant.homeDAOImpl: getServicesOnCategory()");
		
		List<String> services = Collections.emptyList();
		
		try {
			services = jdbcTemplate.queryForList(get_services, String.class, category);
			System.out.println(services.toString());
			return services;
		} catch (Exception e) {
			e.printStackTrace();
			return Collections.emptyList(); // or throw an exception if required
		}
	}
}










