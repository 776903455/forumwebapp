package com.lyh.itstudy.controller;

import com.lyh.itstudy.model.Admin;
import com.lyh.itstudy.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

/**
 * @author lyh
 * @date 2020/3/12 -18:08
 */

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;



    @RequestMapping("findAdminByname")
    public String findAdminByname(Admin admin, Model model, HttpSession session){

        Admin admin1 = adminService.findAdminByname(admin.getAdminname());
        System.out.println("amdin1:"+admin1);
        if(admin1!=null){
            session.setAttribute("admin1",admin1);
            session.setMaxInactiveInterval(60*30);
            return "admin/adminindex";
        }else {
            model.addAttribute("error","账号或密码错误");
            return "admin/adminlogin";
        }


    }
}
