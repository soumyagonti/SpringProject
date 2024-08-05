package com.examples.dao;

import com.examples.pojo.Payment;

public interface PaymentDao
{
    /* This method is used to insert the payment details by user of product
    * @param payment
    *  return type is int
    * */
    public int insert(Payment payment);
}
