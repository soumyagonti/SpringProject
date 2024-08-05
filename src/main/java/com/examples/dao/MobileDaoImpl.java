package com.examples.dao;

import com.examples.pojo.Jewellery;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.Collections;
import java.util.List;

public class MobileDaoImpl implements MobileDao
{
    JdbcTemplate jdbcTemplate;

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public int insert(Jewellery product) {
        String query = "INSERT INTO jewellery (id, name, color, price, image, description) VALUES (?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(query, product.getId(), product.getName(), product.getColor(), product.getPrice(), product.getImage(), product.getDescription());
    }
    @Override
    public List<Jewellery> getMobiles()
    {
        String query="SELECT * FROM JEWELLERY";
        return jdbcTemplate.query(query,new BeanPropertyRowMapper<Jewellery>(Jewellery.class));
    }
    @Override
    public String deleteMobile(int id)
    {
        List<Jewellery> m = findMobile(id);
        int y = 0;
        if (m != null) {
            String query = "DELETE FROM JEWELLERY WHERE ID=?";
            y = jdbcTemplate.update(query,id);
            return "Successfully Deleted";
        } else {
            return "Your selected data is not available";
        }
    }

    @Override
    public int updateMobile(int id, String name, String color, int price) {
        List<Jewellery> m = findMobile(id);
        int y = 0;
        if (m != null) {
            String query = "UPDATE JEWELLERY SET NAME=?,COLOR=?,PRICE=? WHERE ID=?";
            y = jdbcTemplate.update(query, name, color, price, id);
        } else {
            System.out.println("Record with ID " + id + " does not exist.");
        }
        return y;
    }
    @Override
    public List<Jewellery> findMobile(int id) {
        String query="SELECT * FROM JEWELLERY WHERE ID=?";
        return Collections.singletonList(jdbcTemplate.queryForObject(query, new Object[]{id}, new BeanPropertyRowMapper<Jewellery>(Jewellery.class)));
    }
}
