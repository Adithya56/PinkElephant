package com.pinkelephant.daos.impl.user;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.RowMapper;

import com.pinkelephant.model.user.Award;

public class AwardRowMapper implements RowMapper<Award> {
    private static final Logger logger = LoggerFactory.getLogger(AwardRowMapper.class);

    @Override
    public Award mapRow(ResultSet rs, int rowNum) throws SQLException {
        logger.info("ENTERING: PinkElephant.AwardRowMapper : mapRow()");

        Award award = new Award();
        award.setId(rs.getInt("id"));
        award.setTitle(rs.getString("title"));
        award.setDesc(rs.getString("description"));

        try (InputStream inputStream = rs.getBinaryStream("image");
             ByteArrayOutputStream outputStream = new ByteArrayOutputStream()) {

            int bufferSize = Math.toIntExact(rs.getBytes("image").length);
            byte[] buffer = new byte[bufferSize];
            int bytesRead;
            while ((bytesRead = inputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);
            }

            byte[] imageBytes = outputStream.toByteArray();
            String base64Image = Base64.getEncoder().encodeToString(imageBytes);
            inputStream.close();
            outputStream.close();
            award.setBase64Image(base64Image);

        } catch (IOException e) {
            logger.error("Error reading image from database", e);
            throw new RuntimeException("Error reading image from database", e);
        }

        logger.info("LEAVING: PinkElephant.AwardRowMapper : mapRow()");
        return award;
    }
}
