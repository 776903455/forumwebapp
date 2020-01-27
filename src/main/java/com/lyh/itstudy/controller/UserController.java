package com.lyh.itstudy.controller;


import com.lyh.itstudy.model.User;
import com.lyh.itstudy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author lyh
 * @date 2020/1/26 -11:46
 */
@Controller
public class UserController {

  @Autowired
    private UserService userService;


    /*去用户注册界面*/
    @RequestMapping("toRegister")
    public String toRegister() {
        return "register";
    }

    /*用户注册*/
    @RequestMapping("register")
    public String register(User user, Model model) {
        System.out.println(user);

        userService.register(user);
        return "registersuccess";
    }

    @RequestMapping("reglog")
    public String reglog(){
        return "login";
    }

    /*去用户登录界面*/
    @RequestMapping("toLogin")
    public String toLogin() {
        return "login";
    }

    /*用户登录*/
    @RequestMapping("login")
    public String login(@RequestParam("username") String username , @RequestParam("password") String password , Model model,
                        HttpServletRequest request) {

        User user = userService.login(username, password);

        if(user!=null){
          HttpSession session= request.getSession();
          session.setAttribute("user",user);

        }else{

            Model model1 = model.addAttribute("error", "账号或密码错误");
            return "login";
        }
        return "index";
    }
}
