package com.pinkelephant.daos.impl.user;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collections;
import java.util.List;

import javax.sql.DataSource;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.pinkelephant.controllers.user.homeController;
import com.pinkelephant.daos.user.homeDAO;
import com.pinkelephant.model.user.Award;

@Component
public class homeDAOImpl implements homeDAO{
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	public homeDAOImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	private static final Logger logger = LoggerFactory.getLogger(homeDAO.class);
	private String get_services = "select services from services where category = ?";
	private String fetch_awards = "select * from awards";
	
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

	@Override
    public List<Award> fetchAwards() {
        logger.info("PinkElephant.homeDAOImpl: fetchAwards()");

        return jdbcTemplate.query(fetch_awards, new AwardRowMapper());
    }
	
	@Override
	public void insertImage() {
		 String imagePath = "C:\\Users\\Adithya\\git\\PinkElephant-1\\PinkElephant\\src\\main\\webapp\\WEB-INF\\images\\creative.jpg";

		    System.out.println("Attempting to read file from path: " + imagePath);

        try (FileInputStream fis = new FileInputStream(new File(imagePath))) {
            byte[] imageData = new byte[fis.available()];
            fis.read(imageData);

            String insertQuery = "INSERT INTO awards (title, description, image) VALUES (?, ?, ?)";
            jdbcTemplate.update(insertQuery, "Sample Award1", "Sample Description1", imageData);

            System.out.println("Image inserted successfully!");

        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}










