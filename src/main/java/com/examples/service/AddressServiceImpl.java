package com.examples.service;

import com.examples.dao.AddressDao;
import com.examples.pojo.Address;

public class AddressServiceImpl implements AddressService
{
    AddressDao addressDao;

    public AddressDao getAddressDao() {
        return addressDao;
    }

    public void setAddressDao(AddressDao addressDao) {
        this.addressDao = addressDao;
    }

    @Override
    public String insert(Address address) {
        if(addressDao.insert(address)>0){
            return "Successfully Inserted";
        }
        else{
            return "TRY AGAIN!!!!!!!";
        }
    }
}
