package com.lyh.itstudy.controller;


import com.lyh.itstudy.model.User;
import com.lyh.itstudy.service.UserService;
import com.sun.deploy.net.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.Random;

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


    /*校验用户存不存在*/

    @RequestMapping(value=("checkUser"))
    public void cheackUser(@RequestParam("username") String username, HttpServletResponse response) throws IOException {

        boolean flag=userService.cheakUser(username);
        PrintWriter writer = response.getWriter();
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf8");
        if(flag==true){
            writer.print("username isexit");
        }else {
            writer.print("username can use");
        }

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


    /*签到获取金币*/
    @RequestMapping("getScore")
    public String getMoney(@RequestParam("score")int score,@RequestParam("username")String username,Model model){
        Random random=new Random();
        System.out.println(score+"-"+username);
        int num=random.nextInt(5)+10;
        score=score+num;
        System.out.println(num+"-"+score);
        int i=userService.addScore(score,username);
        model.addAttribute("scoreInfo",num);
        return "index";
    }
}
