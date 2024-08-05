package com.examples.service;

import com.examples.dao.PaymentDao;
import com.examples.pojo.Payment;

public class PaymentServiceImpl implements PaymentService
{
    PaymentDao paymentDao;

    public PaymentDao getPaymentDao() {
        return paymentDao;
    }

    public void setPaymentDao(PaymentDao paymentDao) {
        this.paymentDao = paymentDao;
    }

    @Override
    public String insert(Payment payment) {
        if(paymentDao.insert(payment)>0){
            return "Successfully Inserted";
        }
        else{
            return "TRY AGAIN!!!!!!!";
        }
    }
}
