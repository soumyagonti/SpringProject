package com.examples.service;

import com.examples.dao.CartDao;
import com.examples.pojo.Cart_Items;
import com.examples.pojo.Jewellery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.List;

@Service
public class CartServiceImpl implements CartService
{
    @Autowired
    CartDao cartdao;
    @Autowired
    JdbcTemplate jdbcTemplate;
    @Override
    public List<Cart_Items> findByUsername(String username) {
        List<Cart_Items> cartItems = cartdao.findByUsername(username);
        System.out.println(cartItems);
        return cartItems;
    }

    public void addToCart(Cart_Items cartItems, Principal principal,Jewellery jewellery) {
        String username = principal.getName();
        Cart_Items cartItemss=new Cart_Items();
        cartItemss.setUsername(username);
        String name=cartItemss.setName(jewellery.getName());
        String price=cartItemss.setPrice(jewellery.getPrice());
        String sql = "INSERT INTO cart_items (username,name,price) VALUES (?,?, ?)";
        jdbcTemplate.update(sql,username,name,price);
    }
    @Override
    public void deleteCart(String name) {
        cartdao.deleteCart(name);
    }
}
