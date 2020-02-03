package com.lyh.itstudy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author lyh
 * @date 2020/2/3 -17:31
 */
@Controller
public class ToOtherJieMian {

    /*去首页*/
    @RequestMapping("toIndex")
    public String toIndex(){
        return "index";
    }

    /*跳转技术交流界面*/
    @RequestMapping("toSkillExchange")
    public String toSkillExchange(){
        return "skillexchange";
    }

    /*跳转学习路径界面*/
    @RequestMapping("toStudyPath")
    public String toStudyPath(){
        return "studypath";
    }


    /*免费资源界面*/

    @RequestMapping("toFreeSource")
    public String toFreeSource(){
        return "freesource";
    }

    /*去商品界面*/
    @RequestMapping("toProducts")
    public String toProducts(){
        return "products";
    }



    /*学习路线的跳转*/
    @RequestMapping("toC")
    public String toC(){
        return "allpath/c";
    }
    @RequestMapping("toHtml")
    public String toHtml(){
        return "allpath/html";
    }
    @RequestMapping("toJavaPath")
    public String toJavaPath(){
        return "allpath/javapath";
    }
    @RequestMapping("toPhp")
    public String toPhp(){
        return "allpath/php";
    }
    @RequestMapping("toPython")
    public String toPython(){
        return "allpath/pyhton";
    }@RequestMapping("toYunjissian")
    public String toYunjissian(){
        return "allpath/yunjisuan";
    }

}


