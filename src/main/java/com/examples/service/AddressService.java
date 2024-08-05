package com.examples.service;

import com.examples.pojo.Address;

public interface AddressService
{
    /*used to call the dao method which is used to insert the address
    *@param address
    * return type is int
    * */
    public String insert(Address address);
}
