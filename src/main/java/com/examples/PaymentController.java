package com.examples;

import com.examples.pojo.Payment;
import com.examples.service.PaymentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.UUID;

@Controller
public class PaymentController
{

    PaymentService paymentService;

    public PaymentService getPaymentService() {
        return paymentService;
    }

    public void setPaymentService(PaymentService paymentService) {
        this.paymentService = paymentService;
    }

    @RequestMapping("/payinsert")
    public String insert( @ModelAttribute("pay") Payment payment,Model model){
        paymentService.insert(payment);
        String randomId = UUID.randomUUID().toString();
        System.out.println(randomId);
        model.addAttribute("random",randomId);
        return "ordered";
    }
}
