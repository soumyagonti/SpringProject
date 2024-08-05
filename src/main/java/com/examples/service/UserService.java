package com.examples.service;
import com.examples.pojo.User;
import javax.servlet.http.HttpServletRequest;

public interface UserService
{
    /*
    * used to call the dao method which is inserting the user details into the db
    * @param user
    * return type is int
     */
    public int insert(User user);
    /*
    * used to perform logout action
    * no return type
     */
    public void logout(HttpServletRequest httpServletRequest);
}
