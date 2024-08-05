package com.examples.dao;

import com.examples.pojo.User;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class UserDaoImpl implements UserDao
{
    JdbcTemplate jdbcTemplate;

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public int insert(User user) {
        String role="ROLE_USER";
        user.setRole(role);
        user.setPassword(encrypt(user.getPassword()));
        String query="insert into user(id,username,password,role) values ('"+user.getId()+"','"+user.getUsername()+"','"+user.getPassword()+"','"+user.getRole()+"') ";
        return jdbcTemplate.update(query);
    }
    public String encrypt(String plain){
        BCryptPasswordEncoder bCryptPasswordEncoder=new BCryptPasswordEncoder();
        String hashed=bCryptPasswordEncoder.encode(plain);
        return hashed;
    }
}
