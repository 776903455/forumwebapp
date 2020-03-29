package com.lyh.itstudy.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.itstudy.model.Categorysecond;
import com.lyh.itstudy.model.User;
import com.lyh.itstudy.service.UserService;
import com.lyh.itstudy.utils.GetTimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.annotation.MultipartConfig;
import java.util.List;

/**
 * @author lyh
 * @date 2020/3/15 -10:31
 */

@Controller
@MultipartConfig
public class AdminUserController {

    @Autowired
    private UserService userService;

    @RequestMapping("adminFindAllUser")
    public String adminFindAllUser(Model model, @RequestParam(value = "pn",defaultValue="1")Integer pn){

        PageHelper.startPage(pn,5);
        List<User> users=userService.adminFindAllUser();

        PageInfo userPage=new PageInfo(users,5);
        if(users!=null){
            model.addAttribute("userPage",userPage);
            return "/admin/right_user";
        }else {
            model.addAttribute("info","暂时没有数据信息");
            return "/admin/right_user";
        }
    }

    @RequestMapping("deleteuser")
    public String deleteuser(@RequestParam("uid")Integer uid){

        userService.deleteuser(uid);
        return "redirect:adminFindAllUser.do";
    }


    @RequestMapping("adduser")
    public String adduser(User user){
        /* 注册时间*/
        String time= GetTimeUtil.getDate();
        user.setRegtime(time);
        /* 默认头像*/
        user.setUimage("static/img/touxiang/defaultImg.jpg");
        /*默认昵称为账号*/
        user.setUname(user.getUsername());
        userService.register(user);

        return "redirect:adminFindAllUser.do";
    }
}
