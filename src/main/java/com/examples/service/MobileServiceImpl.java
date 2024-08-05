package com.examples.service;

import com.examples.dao.MobileDao;
import com.examples.pojo.Jewellery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MobileServiceImpl implements MobileService
{
    @Autowired
    JdbcTemplate jdbcTemplate;

    MobileDao mobileDaoInterface;

    public MobileDao getMobileDaoInterface() {
        return mobileDaoInterface;
    }

    public void setMobileDaoInterface(MobileDao mobileDaoInterface) {
        this.mobileDaoInterface = mobileDaoInterface;
    }

    @Override
    public String insertmobileDetais(Jewellery product)
    {
        if(mobileDaoInterface.insert(product)>0)
        {
            return "DATA INSERTED SUCCESSFULLY";
        }
        else{
            return "TRY AGAIN!!!!!!!";
        }
    }

    @Override
    public List<Jewellery> getMobiles() {
        return mobileDaoInterface.getMobiles();
    }

    @Override
    public List<Jewellery> findMobile(int id)
    {
        return mobileDaoInterface.findMobile(id);
    }

    public Jewellery findByIdMobile(int id)
    {
        String query="SELECT * FROM JEWELLERY WHERE ID=?";
        return jdbcTemplate.queryForObject(query, new Object[]{id}, new BeanPropertyRowMapper<Jewellery>(Jewellery.class));
    }


    @Override
    public String deleteMobile(int id) {
        return mobileDaoInterface.deleteMobile(id);
    }

    @Override
    public void updateMobile(int id, String name, String color, int price) {
        mobileDaoInterface.updateMobile(id,name,color,price);
    }
}
