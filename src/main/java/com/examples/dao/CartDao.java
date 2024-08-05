package com.examples.dao;

import com.examples.pojo.Cart_Items;

import java.util.List;

public interface CartDao {

    /*This method is used to find the cart details by Username
    * @param username
    *
    * return type is Cart_Items of List*/
    List<Cart_Items> findByUsername(String username);

    /*This method is used to delete the cart details by Username
     * @param username
     *
     * return type is int*/
    public int deleteCart(String name);
}