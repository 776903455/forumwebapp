package com.lyh.itstudy.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.itstudy.model.Article;
import com.lyh.itstudy.model.User;
import com.lyh.itstudy.service.ArticleService;
import com.lyh.itstudy.service.UserService;
import com.lyh.itstudy.utils.GetTimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;

/**
 * @author lyh
 * @date 2020/3/15 -10:31
 */

@Controller
@MultipartConfig
public class AdminArticleController {

    @Autowired
    private ArticleService articleService;

    @RequestMapping("adminFindAllArticle")
    public String adminFindAllUser(Model model, @RequestParam(value = "pn",defaultValue="1")Integer pn){

        PageHelper.startPage(pn,8);
        List<Article> articles=articleService.adminFindAllArticle();

        PageInfo articlePage=new PageInfo(articles,5);
        if(articles!=null){
            model.addAttribute("articlePage",articlePage);
            return "/admin/right_article";
        }else {
            model.addAttribute("info","暂时没有数据信息");
            return "/admin/right_article";
        }
    }

    @RequestMapping("deletearticle")
    public String deletearticle(@RequestParam("aid")Integer aid){

        articleService.deletearticle(aid);
        return "redirect:adminFindAllArticle.do";
    }


    @RequestMapping("addArticle")
    public String addArticle(Article article, HttpServletRequest request){
        /*文本内容*/


        /*发帖时间*/
        Date date= GetTimeUtil.getDateFormat();
        article.setAdate(date);
        /*设置默认回复数*/
        article.setAreplay(0);
        /*设置默认点赞数*/
        article.setApraise(0);
       article.setAmoney(article.getAmoney()==null?0:article.getAmoney());
        /*获取amdin_id*/

        /*获取csid*/
        Integer csid = Integer.parseInt(request.getParameter("csid"));
        article.setCsid(csid);

        /*获取url提取码*/
        String tqm = request.getParameter("tqm");
        Integer i=null;
        if(tqm!=null&&article.getResourseurl()!=null){
            /*拼接url地址*/
            String url=article.getResourseurl().concat("_"+tqm);

            String tqma = url.substring(url.lastIndexOf("_"));
            String yrl1=url.substring(0,url.lastIndexOf("_"));
            System.out.println(yrl1+"--"+tqma);
            article.setResourseurl(url);
        }else {
            article.setResourseurl("https://pan.baidu.com/s/14F9S-6CJwkAdpbmNnCwXEQ");
        }

        System.out.println(article);
        i=articleService.saveArticle(article);
        if(i>0){
            System.out.println("帖子保存成功");
        }else {
            System.out.println("帖子保存失败");
        }
        return "redirect:adminFindAllArticle.do";

    }


    @RequestMapping("toupdateArticle")
    public String toupdateArticle(@RequestParam("aid")Integer aid,Model model){

        Article article=articleService.toupdateArticle(aid);
        model.addAttribute("article",article);
        return "admin/update/articleupdate";
    }


    @RequestMapping("updateArticle")
    public String updateArticle(Article article){
        articleService.updateArticle(article);
        return "redirect:adminFindAllArticle.do";
    }
}
