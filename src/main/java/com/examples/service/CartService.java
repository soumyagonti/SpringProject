package com.examples.service;

import com.examples.pojo.Cart_Items;

import java.util.List;

public interface CartService
{
     /*used to call the dao method which is fetch the user cart details from db
    * @param username
    * return type is int
     */
    public List<Cart_Items> findByUsername(String username);

    /*used to call the dao method which is delete the user cart details from db
     * @param username
     * no return type
     */
    public void deleteCart(String name);
}
