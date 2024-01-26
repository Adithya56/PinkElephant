package com.pinkelephant.daos.impl.user;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.pinkelephant.daos.user.ContactInfoDAO;

@Component
public class ContactInfoDAOImpl implements ContactInfoDAO {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public ContactInfoDAOImpl(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public String getPhoneNumber() {
        return fetchData("phoneNumber");
    }

    @Override
    public String getMailPwd() {
	return fetchData("MailPwd");
    }

    @Override
    public String getAddress() {
        return fetchData("address");
    }

    @Override
    public String getMailId() {
        return fetchData("mailId");
    }

    private String fetchData(String columnName) {
	String query = "SELECT value FROM ContactInfo WHERE key = ?";
        String result = null;

        try {
	    result = jdbcTemplate.queryForObject(query, new Object[] { columnName }, String.class);
        } catch (EmptyResultDataAccessException e) {
            // Handle the case where no data is found
            e.printStackTrace();
        }


        return result;
    }

}