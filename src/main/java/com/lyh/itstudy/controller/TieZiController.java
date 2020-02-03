package com.lyh.itstudy.controller;

import com.lyh.itstudy.model.Article;
import com.lyh.itstudy.model.Categorysecond;
import com.lyh.itstudy.service.ArticleService;
import com.lyh.itstudy.service.CategorySecondService;
import com.lyh.itstudy.utils.GetTimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * @author lyh
 * @date 2020/2/1 -13:46
 */
@Controller
public class TieZiController {

    @Autowired
    private CategorySecondService categorySecondService;

    @Autowired
    private ArticleService articleService;

    /*去发帖界面*/
    @RequestMapping("tofatiejiemian")
    public String tofatiejiemian(@RequestParam("text")String text,@RequestParam("uid")Integer uid,Model model){

        text=text.replaceAll(" ","+");
        model.addAttribute("text",text);
        model.addAttribute("uid",uid);
        return "soure_list/fatiejiemian";
    }

    @RequestMapping("saveTieZi")
    public String saveTieZi(Article article, HttpServletRequest request){
        /*文本内容*/
        String text=request.getParameter("atext");
        article.setAtxte(text);
        /*发帖时间*/
        Date date= GetTimeUtil.getDateFormat();
        article.setAdate(date);
        /*设置默认回复数*/
        article.setAreplay(0);
        /*设置默认点赞数*/
        article.setApraise(0);
        /*获取uid*/
        Integer uid=Integer.parseInt(request.getParameter("uid"));
        article.setUid(uid);

        /*根据二级目录类型从数据库中获取csid*/

        String typename=article.getTypename();
        if(typename!=null) {
            typename = typename.substring(5);
            Categorysecond categorysecond = categorySecondService.findByCsname(typename);
            article.setCsid(categorysecond.getCsid());
        }else {
            System.out.println("没传过来");
        }

        Integer i=articleService.saveArticle(article);
        if(i>0){
            System.out.println("帖子保存成功");
        }else {
            System.out.println("帖子保存失败");
        }

        return null;
    }


}
