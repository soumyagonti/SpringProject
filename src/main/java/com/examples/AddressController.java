package com.examples;

import com.examples.pojo.Address;
import com.examples.pojo.Payment;
import com.examples.service.AddressService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AddressController
{
    AddressService addressService;

    public AddressService getAddressService() {
        return addressService;
    }

    public void setAddressService(AddressService addressService) {
        this.addressService = addressService;
    }

    @RequestMapping("/address")
    public String insertt(Model model)
    {
        model.addAttribute("address",new Address());
        return "address";
    }
    @RequestMapping("/saving")
    public String insert(@ModelAttribute("address")Address address, Model model)
    {
        addressService.insert(address);
        model.addAttribute("pay",new Payment());
        return "payment";
    }
}
