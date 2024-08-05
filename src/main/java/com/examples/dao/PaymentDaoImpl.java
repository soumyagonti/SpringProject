package com.examples.dao;

import com.examples.pojo.Payment;
import org.springframework.jdbc.core.JdbcTemplate;

public class PaymentDaoImpl implements PaymentDao
{

    JdbcTemplate jdbcTemplate;
    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public int insert(Payment payment) {
       String query="insert into payment(name,bank,account,ifsc)values('"+payment.getName()+"','"+payment.getBank()+"','"+payment.getAccount()+"','"+payment.getIfsc()+"')";
       return jdbcTemplate.update(query);
    }
}
