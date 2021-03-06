package com.lyh.itstudy.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.itstudy.model.Article;
import com.lyh.itstudy.model.Replay;
import com.lyh.itstudy.model.User;
import com.lyh.itstudy.model.Userarticle;
import com.lyh.itstudy.service.ArticleService;
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

import javax.servlet.ServletContext;
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
    @Autowired
    private ArticleService articleService;




    /*去用户注册界面*/
    @RequestMapping("toRegister")
    public String toRegister() {
        return "WEB-INF/views/register";
    }

    /*用户注册*/
    @RequestMapping("register")
    public String register( User user, Model model, HttpSession session) {

        /* 注册时间*/
        String time=GetTimeUtil.getDate();
        user.setRegtime(time);
        /* 默认头像*/
        user.setUimage("static/img/touxiang/defaultImg.jpg");
        /*默认昵称为账号*/
        user.setUname(user.getUsername());

        /*比较前台拿到的验证码和后台生成的是否一致*/
        String codeValue = (String) session.getAttribute("verifyCodeValue");
        if(!codeValue.equalsIgnoreCase(user.getYzm())){
            model.addAttribute("codeEroor","验证码错误");
            return "WEB-INF/views/register";
        }

        userService.register(user);
        return "WEB-INF/views/registersuccess";

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
        return "WEB-INF/views/login";
    }

    /*去用户登录界面*/
    @RequestMapping("toLogin")
    public String toLogin() {
        return "WEB-INF/views/login";
    }

    /*用户登录*/
    @RequestMapping("login")
    public String login(@RequestParam("username") String username , @RequestParam("password") String password , Model model,
                        HttpServletRequest request) {
        User user = userService.login(username, password);
        if(user!=null){
            HttpSession session= request.getSession();
            session.setAttribute("user",user);
            return "redirect:toIndex.do";

        }else{

            Model model1 = model.addAttribute("error", "账号或密码错误");
            return "WEB-INF/views/login";
        }

    }



    /*签到获取金币*/

    @RequestMapping("getScore")
    public  String  getMoney(@RequestParam("score")int score,@RequestParam("username")String username,
                             @RequestParam("qdstatus")Integer qdstatus, Model model,HttpSession session,HttpServletResponse response, HttpServletRequest request) throws IOException {

        Cookie cookie=new Cookie("qiandao","1");
        cookie.setMaxAge(60);
        response.addCookie(cookie);
        ServletContext servletContext = request.getServletContext();
        servletContext.setAttribute("username",username);
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
            session.setMaxInactiveInterval(60*60*24);
            session.setAttribute("user",user);

        }else {
            System.out.println("没有此用户！");
        }


        return "WEB-INF/views/index";

    }

    /*去个人信息界面*/
    @RequestMapping("toPersonInfo")
    public  String toPersonInfo(@RequestParam("username")String username,Model model){
        User user= userService.findUser(username);
        user.setActivetime(GetTimeUtil.getDate());
        model.addAttribute("user",user);
        return "WEB-INF/views/personInfo";
    }


    /*更新个人信息*/
    @RequestMapping("updatePersonInfo")
    public String  updatePersonInfo(User user, HttpSession session){
        System.out.println("uid:"+user.getUid());
        if(user!=null){
            userService.updatePersonInfo(user);
        }else {
            return "WEB-INF/views/personinfobackground";
        }

        User user1 = userService.selectByUid(user.getUid());
        session.setAttribute("user",user1);
        return "WEB-INF/views/index";
    }

    /*更新头像*/
    @RequestMapping("updateTouXiang")
    public String test(@RequestParam("file")MultipartFile file, @RequestParam("uid")Integer uid, HttpSession session,HttpServletRequest request){

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
            /*更新数据库的图片路径*/
            newname="static/img/touxiang/"+newname;
            userService.updateImg(uid,newname);


        } catch (IOException e) {
            e.printStackTrace();
        }

        /*重新查询用户，传到前端*/
        User user = userService.selectByUid(uid);
        session.setAttribute("user",user);
        return "WEB-INF/views/personInfo";
    }



    /*
     *功能描述 在用户购买帖子后更新用户信息
     * @author lyh
     * @date 2020/3/10
     * @param
     * @return
    */
    @RequestMapping("updateUserScoreByUid")
    @ResponseBody
    public void updateUserScoreByUid(@RequestParam("uid")Integer uid,@RequestParam("amoney")Integer amoney,HttpSession session){

        User user = userService.selectByUid(uid);
        user.setScore(user.getScore()-amoney);
        /*更新session*/
        User user1 = (User)session.getAttribute("user");
        user1.setScore(user.getScore()-amoney);
        session.setAttribute("user",user1);

        boolean flag=userService.updateUserScoreByUid(user);
        if(flag){
            System.out.println("更新成功");
        }else {
            System.out.println("更新失败");
        }

    }

    /*
     *功能描述 我的收藏
     * @author lyh
     * @date 2020/3/29
     * @param []
     * @return java.lang.String
    */
    @RequestMapping("myCollections")
    public String myCollections(Model model,@RequestParam("uid")Integer uid,@RequestParam(value = "pn",defaultValue="1")int pn){

       Userarticle collections=userService.selectCollection(uid);
       if(collections!=null){
           PageHelper.startPage(pn,5);
           List<Article> collArt=articleService.findArtByAid(collections.getArtid());
           PageInfo<Article> collpage = new PageInfo(collArt,5);
           model.addAttribute("collpage",collpage);
           model.addAttribute("flag",0);
       }
        return "WEB-INF/views/collection";
    }




    /*用户退出*/
    @RequestMapping("exit")
    public String exit(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        return "WEB-INF/views/index";
    }







}