package com.examples.service;

import com.examples.dao.UserDao;
import com.examples.pojo.User;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.util.Date;

public class UserServiceImpl implements UserService
{
    UserDao userDao;
    public UserDao getUserDao() {
        return userDao;
    }
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    JdbcTemplate jdbcTemplate;

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public int insert(User user) {
       return userDao.insert(user);
    }
    @Override
    public void logout(HttpServletRequest httpServletRequest) {
        System.out.println("Logout method triggered");
        ServletContext servletContext=httpServletRequest.getServletContext();
        int random=(int)servletContext.getAttribute("random");
        Date date=new Date();
        int a= jdbcTemplate.update("update user_login set logout_time = ? where random = ?",new Timestamp(date.getTime()),random);
        System.out.println("Logged out");
    }
}
