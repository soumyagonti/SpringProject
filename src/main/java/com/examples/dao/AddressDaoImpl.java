package com.examples.dao;

import com.examples.pojo.Address;
import org.springframework.jdbc.core.JdbcTemplate;

public class AddressDaoImpl implements AddressDao
{
    JdbcTemplate jdbcTemplate;
    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public int insert(Address address) {
        String query="insert into address(name,number,house,street,mandal,district,state,pincode)values('"+address.getName()+"','"+address.getNumber()+"','"+address.getHouse()+"','"+address.getStreet()+"','"+address.getMandal()+"','"+address.getDistrict()+"','"+address.getState()+"','"+address.getPincode()+"')";
        return jdbcTemplate.update(query);
    }
}
