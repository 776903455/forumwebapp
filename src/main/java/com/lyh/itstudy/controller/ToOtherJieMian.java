package com.lyh.itstudy.controller;

import com.lyh.itstudy.model.Article;
import com.lyh.itstudy.model.Category;
import com.lyh.itstudy.model.Categorysecond;
import com.lyh.itstudy.model.Gift;
import com.lyh.itstudy.service.CategorySecondService;
import com.lyh.itstudy.service.CategoryService;
import com.lyh.itstudy.service.GiftService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/**
 * @author lyh
 * @date 2020/2/3 -17:31
 */
@Controller
public class ToOtherJieMian {
    @Autowired
    private CategoryService categoryService;
    @Autowired
    private CategorySecondService categorySecondService;
    @Autowired
    private GiftService giftService;

    /*去首页*/
    @RequestMapping("toIndex")
    public String toIndex(){
        return "index";
    }

    /*跳转技术交流界面*/
    @RequestMapping("toSkillExchange")
    public String toSkillExchange(@RequestParam("cid")Integer cid, Model model)
    {
        /*根据一级目录的id查找二级目录*/
     /*   List<Category>CList= categoryService.findCategory(cid);
        if(CList!=null) {
            for (Category c: CList) {
                List<Categorysecond> csList = c.getCsList();*/

        List<Categorysecond> CList= categorySecondService.findCategory(cid);
        model.addAttribute("csList",CList);

        return "skillexchange";
    }

    /*跳转学习路径界面*/
    @RequestMapping("toStudyPath")
    public String toStudyPath(){
        return "studypath";
    }


    /*免费资源界面*/

    @RequestMapping("toFreeSource")
    public String toFreeSource( @RequestParam("cid")Integer cid,Model model){
        /*根据一级目录的id查找二级目录*/
        List<Categorysecond> CList= categorySecondService.findCategory(cid);

        model.addAttribute("freeCsList",CList);
       /* for (Categorysecond cs:CList){
            System.out.println("cs:"+cs);
            List<Article> artList = cs.getArtList();
            for (Article art:artList){
                System.out.println("art:"+art);
            }

        }*/

        return "freeresourse";
    }

    /*去商品界面*/
    @RequestMapping("toProducts")
    public String toProducts(Model model, HttpSession session){
        /*查询热门商品*/
        /*数据大小*/
        Integer ii=6;
        /*是否是热门*/
        Integer i=1;
        List<Gift> listGift=giftService.selectGiftHot(i,ii);
      /*  model.addAttribute("listGift",listGift);*/
        session.setAttribute("listGift",listGift);

        /*查询最新商品*/
        /*是否是最新*/
        Integer news=0;
        List<Gift> newsList=giftService.selectGiftNews(news,ii);
       /* model.addAttribute("newsList",newsList);*/
        session.setAttribute("newsList",newsList);
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


