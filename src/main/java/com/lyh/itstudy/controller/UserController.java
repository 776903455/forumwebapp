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
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import javax.validation.Valid;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.util.*;

/**
 * @author lyh
 * @date 2020/1/26 -11:46
 */
@Controller
@MultipartConfig
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
    public String register( User user, Model model, HttpSession session) {

        /* 注册时间*/
        String time=GetTimeUtil.getDate();
        user.setRegtime(time);
        /* 默认头像*/
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
        response.setContentType("text/html;charset=utf-8");
        if(flag==true){
            writer.print("username exit");
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
            return "redirect:/toIndex.do";

        }else{

            Model model1 = model.addAttribute("error", "账号或密码错误");
            return "login";
        }

    }



    /*签到获取金币*/

    @RequestMapping("getScore")
    public  String  getMoney(@RequestParam("score")int score,@RequestParam("username")String username,
                             @RequestParam("qdstatus")Integer qdstatus, Model model,HttpSession session) throws IOException {

        /*改变签到状态*/
        qdstatus=1;
        /*获取随机金币数*/
        Random random=new Random();
        int num=random.nextInt(5)+10;
        score=score+num;
        int i=userService.addScore(score,username,qdstatus);
        model.addAttribute("scoreInfo",num);

        /*查询更新后用户数据*/
        User user = userService.findUser(username);
        if(user!=null){
            session.setMaxInactiveInterval(60*60*30);
            session.setAttribute("user",user);

        }else {
            System.out.println("没有此用户！");
        }


        return "index";

    }

    /*去个人信息界面*/
    @RequestMapping("toPersonInfo")
    public  String toPersonInfo(@RequestParam("username")String username,Model model){
        User user= userService.findUser(username);
        user.setActivetime(GetTimeUtil.getDate());
        model.addAttribute("user",user);
        return "personInfo";
    }


    /*更新头像*/
    @RequestMapping("updateTouXiang")
    public String test(@RequestParam("file")MultipartFile file, @RequestParam("uid")Integer uid, HttpSession session,HttpServletRequest request){
        System.out.println("uid:"+uid);
        /*获取文件名*/
        String filename = file.getOriginalFilename();

        /*获取一个随机字符串*/
        String uuidname=UUID.randomUUID().toString().replace("-","");
        /*截取后缀*/
        String typename=filename.substring(filename.lastIndexOf("."));
        /*拼接成一个新的文件名字*/
        String newname=uuidname+typename;

        //获取存储文件的真实路径
        String realpath=request.getServletContext().getRealPath("/static/img/touxiang");
        try {
            /*将图片另存储为此地*/
            file.transferTo(new File(realpath+"/"+newname));
            System.out.println("path:"+realpath+"/"+newname);
            /*更新数据库的图片路径*/
            newname="static/img/touxiang/"+newname;
            userService.updateImg(uid,newname);
            System.out.println("newname="+newname);

        } catch (IOException e) {
            e.printStackTrace();
        }

        /*重新查询用户，传到前端*/
        User user = userService.selectByUid(uid);
        session.setAttribute("user",user);
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