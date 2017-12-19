/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Tmplates
 * and open the template in the editor.
 */
package com.shop;

import com.shop.dao.UserService;
import com.shop.model.User;
import com.shop.utils.PasswordDigest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/register")
public class RegistrationController {

   @Autowired
    UserService us;

   @RequestMapping()
   public String registerForm(Model model) {
        User registerBean = new User();
        model.addAttribute("Registration", registerBean);
       return "Registrasi";
   }

   @RequestMapping(value = "/save")
   public String saveRegistration(@ModelAttribute("Registration") User register, Model model) {
       User user = new User();
       String encryptedPassword = PasswordDigest.createEncryptedPassword(register.getPassword());
        user.setPassword(encryptedPassword);
        user.setUsername(register.getUsername());
        user.setEmail(register.getEmail());
        user.setNoHp(register.getNoHp());
        user.setName(register.getName());
        
//        us.saveUser(user);
               
        model.addAttribute("data", register);
        return "redirect:../login";
   }

}
