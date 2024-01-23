package com.pinkelephant.daos.impl.user;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.pinkelephant.daos.user.FilmImagesDAO;
import com.pinkelephant.model.user.Films;

@Component
public class FilmImagesDAOImpl implements FilmImagesDAO{
    
    private JdbcTemplate jdbcTemplate;
    
    @Autowired
	public FilmImagesDAOImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

    @Override
    public List<Films> getFilmImages() {
        String sql = "SELECT poster FROM films LIMIT 6";

        return jdbcTemplate.query(sql, new RowMapper<Films>() {
            @Override
            public Films mapRow(ResultSet rs, int rowNum) throws SQLException {
                Films film = new Films();
                // Assuming PostgreSQL is used and the base64Poster column is of type bytea
                byte[] imageBytes = rs.getBytes("poster");
                String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                film.setBase64Poster(base64Image);
                return film;
            }
        });
    }

}
