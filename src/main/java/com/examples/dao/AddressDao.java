package com.examples.dao;

import com.examples.pojo.Address;

public interface AddressDao
{
    /*  this method used to insert the address in the db
    * @param address
    *return type is int
    *  */
    public int insert(Address address);
}
