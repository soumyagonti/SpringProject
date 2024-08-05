package com.examples;

import com.examples.pojo.Cart_Items;
import com.examples.pojo.Jewellery;
import com.examples.pojo.User;
import com.examples.service.CartServiceImpl;
import com.examples.service.MobileServiceImpl;
import com.examples.service.UserServiceImpl;
import com.examples.validators.MobileValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.security.Principal;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    MobileServiceImpl mobileService;
    @Autowired
    CartServiceImpl cartService;

    MobileValidator mobileValidator;

    UserServiceImpl userService;
    public UserServiceImpl getUserService() {
        return userService;
    }

    public void setUserService(UserServiceImpl userService) {
        this.userService = userService;
    }

    public MobileValidator getMobileValidator() {
        return mobileValidator;
    }

    public void setMobileValidator(MobileValidator mobileValidator) {
        this.mobileValidator = mobileValidator;
    }

    @RequestMapping(value = "/insert", method = RequestMethod.GET)
    public String inserting(Model model) {
        model.addAttribute("jewellery", new Jewellery());
        return "insert";
    }

    @RequestMapping(value = "/saved", method = RequestMethod.POST)
    public String saving(@Valid @ModelAttribute("jewellery") Jewellery jewellery, Model model, BindingResult bindingResult) {
        mobileValidator.validate(jewellery,bindingResult);
        if(bindingResult.hasErrors()){
            return "insert";
        }
        else{
        mobileService.insertmobileDetais(jewellery);
        model.addAttribute("jew", jewellery);
        return "postinsert";}
    }
    @RequestMapping("/get")
    public ModelAndView getDetails() {
        List<Jewellery> list = mobileService.getMobiles();
        return new ModelAndView("products", "output", list);
    }
    @RequestMapping("/")
    public ModelAndView Details() {
        List<Jewellery> list = mobileService.getMobiles();
        return new ModelAndView("products1", "output", list);
    }
    @RequestMapping("/afterLogin")
    public ModelAndView AfterLogin() {
        List<Jewellery> list = mobileService.getMobiles();
        return new ModelAndView("afterlogin", "output", list);
    }
    @RequestMapping("/find")
    public String find() {
        return "find";
    }
    @RequestMapping("/findform")
    public ModelAndView findMobile(@RequestParam int id,Model model) {
        List<Jewellery> list = mobileService.findMobile(id);
        System.out.println(list);
        model.addAttribute("out",list);
        return new ModelAndView("products", "output", list);
    }

    @RequestMapping("/form")
    public String deleteMobile(@RequestParam("id") int id) {
        mobileService.deleteMobile(id);
        return "deleted";
    }

    @RequestMapping("delete")
    public String form() {
        return "delete";
    }

    @RequestMapping("/updateStarter")
    public String updateStarter() {
        return "updating";
    }

    @RequestMapping("/updateOne")
    public String updateOne(@RequestParam int id, Model model) {
        List<Jewellery> list = mobileService.findMobile(id);
        Jewellery product = list.get(0);
        model.addAttribute("data", product);
        return "update";
    }

    @RequestMapping(value = "/updateform", method = RequestMethod.POST)
    public String updateMobile(@RequestParam("id") int id, @RequestParam("name") String name, @RequestParam("color") String color, @RequestParam("price") int price) {

        mobileService.updateMobile(id, name, color, price);
        return "updated";
    }
    @GetMapping("/details")
    public String showDetails(@RequestParam("id") int mobileId, Model model) {
        List<Jewellery> product=mobileService.findMobile(mobileId);
        model.addAttribute("product", product);
        return "details";
    }
    @RequestMapping(value = "/reg",method = RequestMethod.GET)
    public String userRegister(Model model){
        model.addAttribute("user",new User());
        return "register";
    }
    @RequestMapping(value = "/saveAdmin",method = RequestMethod.POST)
    public String insertAdmin(User user) {
        userService.insert(user);
        System.out.println("USER REGISTERED VALUES ARE INSERTED IN DB");
        return "registered";
    }
    @RequestMapping("/out")
    public String logout(Model model, HttpServletRequest httpServletRequest){
        userService.logout(httpServletRequest);
        List<Jewellery> list = mobileService.getMobiles();
        model.addAttribute( "output", list);
        model.addAttribute("error", "true");
        model.addAttribute("msg","Logged out Successfully");
        return "products1";
    }
    @RequestMapping("/cart")
    public String carting(@RequestParam("id") int id, Model model, Principal principal, Cart_Items cartItems) {
        Jewellery jewellery = mobileService.findByIdMobile(id);
        System.out.println(jewellery);
        model.addAttribute("op",jewellery);
        if (jewellery != null) {
            cartService.addToCart(cartItems,principal,jewellery);
        }
        return "cart";
    }
    @GetMapping("/viewcart")
    public String viewCart(Model model, Principal principal) {
        String username = principal.getName();
        List<Cart_Items> cartItems = cartService.findByUsername(username);
        System.out.println("Cart Items: "+cartItems);
        model.addAttribute("cartItems", cartItems);
        return "viewcart";
    }
    @RequestMapping("/admin")
    public String forAdmin(){
        return "admin";
    }
    @RequestMapping("/del")
    public String deleteCart(String name){
        cartService.deleteCart(name);
        return "viewcart";
    }
}
