package com.pinkelephant.daos.impl.user;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.pinkelephant.daos.user.SocialMediaDAO;
import com.pinkelephant.model.user.SocialMedia;

@Component
public class SocialMediaDAOimpl implements SocialMediaDAO {

    JdbcTemplate jdbcTemplate;
	
	@Autowired
	public SocialMediaDAOimpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
    @Override
    public List<SocialMedia> getAllSocialMedia() {
	String sql = "SELECT * FROM socialmedia";
        return jdbcTemplate.query(sql, new RowMapper<SocialMedia>() {
            @Override
            public SocialMedia mapRow(ResultSet rs, int rowNum) throws SQLException {
            	SocialMedia award = new SocialMedia();
                award.setPlatform(rs.getString("social_media_name"));
                award.setUrl(rs.getString("social_media_link"));
                
                return award;
            }
        });
    }

}
