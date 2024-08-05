package com.examples.dao;

import com.examples.pojo.User;

public interface UserDao
{
    /* Used to insert multiple users in the database
    * @param user
    * return type is int
    * */
    public int insert(User user);
}
