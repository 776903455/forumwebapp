package com.lyh.itstudy.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.itstudy.model.*;
import com.lyh.itstudy.service.ArticleService;
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
    @Autowired
    private ArticleService articleService;


    /*去首页*/
    @RequestMapping("toIndex")
    public String toIndex(Model model,HttpSession session){

        /*查询前五阅读最多主题*/
        List<Article> articles4= articleService.findLookest4();
        /*查询第5-10条阅读最多主题*/
        List<Article> articles5= articleService.findLookest5();
        session.setAttribute("articles4",articles4);
        session.setAttribute("articles5",articles5);

        return "index";
    }

    /*跳转技术交流界面*/
    @RequestMapping("toSkillExchange")
    public String toSkillExchange(@RequestParam("cid")Integer cid, Model model)
    {


        List<Categorysecond> CList= categorySecondService.findCategory(cid);
        model.addAttribute("csList",CList);

        /*查询前五阅读最多主题*/
        List<Article> articles2= articleService.findLookest2();

        /*查询第5-10条阅读最多主题*/
        List<Article> articles3= articleService.findLookest3();

        model.addAttribute("articles2",articles2);

        model.addAttribute("articles3",articles3);

        return "skillexchange";
    }

    /*跳转学习路径界面*/
    @RequestMapping("toStudyPath")
    public String toStudyPath(HttpSession session){
        Object user = session.getAttribute("user");
        System.out.println(user+"-"+session.getId());

        return "studypath";
    }


    /*免费资源界面*/

    @RequestMapping("toFreeSource")
    public String toFreeSource( @RequestParam("cid")Integer cid,Model model){

        /*查找热门资源*/

        /*根据一级目录的id查找二级目录*/
        List<Categorysecond> CList= categorySecondService.findCategory(cid);
        model.addAttribute("freeCsList",CList);

        /*查询前五阅读最多主题*/
       List<Article> articles= articleService.findLookest();
       /*查询第5-10条阅读最多主题*/
       List<Article> articles1= articleService.findLookest1();

       model.addAttribute("articles",articles);
        model.addAttribute("articles1",articles1);
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

    /*去个人详细界面*/
    @RequestMapping("toperbackground")
    public String toperbackground(@RequestParam("uid")Integer uid,@RequestParam(value = "pn",defaultValue = "1")int pn,Model model,HttpSession session){
        PageHelper.startPage(pn,5);
            List<Article> personArt=articleService.findPersonArt(uid);
        PageInfo<Article> personInfoPage=new PageInfo<>(personArt,5);

        /*int[] navigatepageNums = personInfoPage.getNavigatepageNums();
        for (int i:navigatepageNums){
            System.out.println("i:"+i);
        }*/

        session.setAttribute("personArt",personArt);
        model.addAttribute("personInfoPage",personInfoPage);
       /* for (Article article:personArt){
            Categorysecond categorysecond = article.getCategorysecond();
            List<Replay> replist = article.getReplist();
            System.out.println("cs:"+categorysecond.getCsname()+"art"+article);
            for(Replay r:replist){
                System.out.println("rep:"+r);
            }
        }*/

        return "personinfobackground";
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
        return "allpath/python";
    }
    @RequestMapping("toYunjissian")
    public String toYunjissian(){
        return "allpath/yunjisuan";
    }

}


