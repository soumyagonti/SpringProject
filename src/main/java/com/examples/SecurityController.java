package com.examples;

import com.examples.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SecurityController
{
    @Autowired
    private CartService cartService;
    @RequestMapping("/one")
    @ResponseBody
    public String one(){
        return "Test Case One";
    }
    @RequestMapping("/test")
    public String testing(){
        return "login";
    }
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    @RequestMapping("/loginError")
    public String error(Model model)
    {
        model.addAttribute("error", "true");
        model.addAttribute("msg","Invalid Credentials!!!!!");
        return "login";
    }
}
