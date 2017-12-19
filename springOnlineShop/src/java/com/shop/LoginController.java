/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop;

import com.shop.dao.UserService;
import com.shop.model.LoginBean;
import com.shop.model.User;
import com.shop.utils.PasswordDigest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/register")
public class LoginController {

    @Autowired
    UserService us;
    
    @RequestMapping()
    public String segeraLogin(Model model) {
        LoginBean loginBean = new LoginBean();
        model.addAttribute("loginBean", loginBean);
        return "login";
    }
    
    @RequestMapping(value = "/check")
            public String checkLogin(HttpSession session, @ModelAttribute("loginBean") LoginBean, Model model){
                User user = us.findByUsername(LoginBean.getEmail());
                if (user.getEmail()== null){
                    model.addAttribute("errMsg", "password tidak benar");
                    return "login";
                }
        
    
    String encryptedPassword = PasswordDigest.createEncryptedPassword(loginBean.getPassword());//createEncryptedpassword(LoginBean.getPassword());

    if (!encryptedPassword.equals (user.getPassword 
        ())){
        model.addAttribute("errMsg", "password tidak benar");
        return "login";
    }
    
    session.setAttribute ("user",user);

return "berhasilmasuk";
}
}
