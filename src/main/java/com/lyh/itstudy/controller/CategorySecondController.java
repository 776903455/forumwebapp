package com.lyh.itstudy.controller;

import com.lyh.itstudy.model.Categorysecond;
import com.lyh.itstudy.model.User;
import com.lyh.itstudy.service.CategorySecondService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author lyh
 * @date 2020/2/3 -15:08
 */
@Controller
public class CategorySecondController {
    @Autowired
    private  CategorySecondService categorySecondService;

    /*根据名称查询CategorySecond*/
    @RequestMapping("findByCsname")
    public String findByCsname(@RequestParam("csname")String csname, HttpSession session){

        Categorysecond categorySecond=categorySecondService.findByCsname(csname);
        if(categorySecond!=null){
           session.setAttribute("categorySecond",categorySecond);
        }else {
            System.out.println("没有查到");
        }

        return null;
    }
}
