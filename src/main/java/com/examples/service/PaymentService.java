package com.examples.service;

import com.examples.pojo.Payment;

public interface PaymentService
{
    /*used to call the dao method which is used to insert the payment
    * @param payment
    * return type is String
     */
    public String insert(Payment payment);
}
