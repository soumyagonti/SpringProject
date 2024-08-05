package com.examples.dao;

import com.examples.pojo.Cart_Items;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartDaoImpl implements CartDao
{
    @Autowired
    JdbcTemplate jdbcTemplate;
    @Override
    public List<Cart_Items> findByUsername(String username) {
        String sql = "SELECT * FROM cart_items WHERE username = ?";
        List<Cart_Items> cartItems = jdbcTemplate.query(sql, new Object[]{username}, new BeanPropertyRowMapper<>(Cart_Items.class));
        return cartItems;
    }

    @Override
    public int deleteCart(String name) {
        String sql = "DELETE FROM cart_items WHERE name = ?";
        return  jdbcTemplate.update(sql,name);
    }
}
