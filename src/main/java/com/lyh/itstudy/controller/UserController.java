package com.lyh.itstudy.controller;


import com.lyh.itstudy.model.User;
import com.lyh.itstudy.service.UserService;
import com.lyh.itstudy.utils.CheckImgUtil;
import com.lyh.itstudy.utils.GetTimeUtil;
import com.sun.deploy.net.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayOutputStream;
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
    public String register(User user, Model model,HttpSession session) {
        System.out.println(user);
        /*邮箱状态*/
        user.setState(0);
        /*注册时间*/
        String time=GetTimeUtil.getDate();
        user.setRegtime(time);

        /*交易次数*/
        user.setExchangenumber(0);

        /*默认头像*/
        user.setUimage("static/img/touxiang/defaultImg.jpg");

        /*比较前台拿到的验证码和后台生成的是否一致*/
        String codeValue = (String) session.getAttribute("verifyCodeValue");
        if(!codeValue.equalsIgnoreCase(user.getYzm())){
            model.addAttribute("codeEroor","验证码错误");
            return "register";
        }
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

    /*验证码输出到前端页面*/
    @RequestMapping("cheackImg")
    public  String cheackImg(HttpServletResponse response, HttpSession session) throws Exception {
        ByteArrayOutputStream output = new ByteArrayOutputStream();
       String verifyCodeValue= CheckImgUtil.CodeUtil(output);
       session.setAttribute("verifyCodeValue",verifyCodeValue);
        ServletOutputStream out = response.getOutputStream();
        output.writeTo(out);

        return null;
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

    public  String  getMoney(@RequestParam("score")int score,@RequestParam("username")String username,Model model,HttpServletResponse response) throws IOException {

            Random random=new Random();
            int num=random.nextInt(5)+10;
            score=score+num;
            int i=userService.addScore(score,username);
            model.addAttribute("scoreInfo",num);
            /*model.addAttribute("info","签到");*/
            return "index";


    }

    /*去个人信息界面*/
    @RequestMapping("toPersonInfo")
    public  String toPersonInfo(@RequestParam("username")String username,Model model){
        User user= userService.findUser(username);
        user.setActivetime(GetTimeUtil.getDate());
        model.addAttribute("userInfo",user);
        return "personInfo";
    }



    /*用户退出*/
    @RequestMapping("exit")
    public String exit(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        return "index";
    }
}
