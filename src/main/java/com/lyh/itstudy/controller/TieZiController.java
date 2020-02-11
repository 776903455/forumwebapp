package com.lyh.itstudy.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.itstudy.model.Article;
import com.lyh.itstudy.model.Categorysecond;
import com.lyh.itstudy.model.Replay;
import com.lyh.itstudy.service.ArticleService;
import com.lyh.itstudy.service.CategorySecondService;
import com.lyh.itstudy.service.ReplayService;
import com.lyh.itstudy.utils.GetTimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

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

    @Autowired
    private ReplayService replayService;

    /*去发帖界面*/
    @RequestMapping("tofatiejiemian")
    public String tofatiejiemian(@RequestParam("text")String text,@RequestParam("uid")Integer uid,Model model){

        text=text.replaceAll(" ","+");
        model.addAttribute("text",text);
        model.addAttribute("uid",uid);
        return "soure_list/fatiejiemian";
    }
/*保存帖子*/
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



    /*根据csid查询帖所有对应的帖子*/
    @RequestMapping("selectAllArtByCsid")
    public  String selectAllArtByCsid(@RequestParam("csid")Integer csid,@RequestParam(value = "pn",defaultValue="1")int pn,Model model){

        /*查询热门主题帖*/
        List<Article> hotList=  articleService.findHotArt(csid);
        model.addAttribute("hotList",hotList);
        /*查询最新主题帖*/
        List<Article> newsList=  articleService.findNewsArt(csid);
        model.addAttribute("newsList",newsList);

            Categorysecond categorysecond= categorySecondService.findArticleByCsid(csid);
            /*使用pagehelper分页插件进行分页*/
           /* PageHelper.startPage(pn,5);
            List<Article> artLists = categorysecond.getArtList();*/

        //用PageInfo对结果进行包装,把PageInfo传递给页面就行
		//第二个参数是传入连续显示的页数
        /*     PageInfo page = new PageInfo(artLists);
             System.out.println("每页的数量"+page.getPageSize());
            System.out.println("总记录数"+page.getTotal());
            System.out.println("总页数"+page.getPages());
            System.out.println("当前页"+page.getPageNum());
            System.out.println("当前页数量"+page.getSize());
        List<Article> list = page.getList();
        for (Article l:list){
            System.out.println(l);
        }
*/





        return "soure_list/forum-100-1";
    }


    /*根据aid查询帖子信息，并跳转至具体帖子信息界面*/
    @RequestMapping("selectArtByAid")
    public String selectArtByAid(@RequestParam("aid")Integer aid,Model model){
        /*根据aid查询帖子信息*/
        Article article=articleService.selectArtByAid(aid);
        String artTime= GetTimeUtil.getDate(article.getAdate());
        model.addAttribute("article",article);
        model.addAttribute("artTime",artTime);


        /*根据aid获取帖子的回复数据*/
        List<Replay> replay =replayService.selectRepByAid(aid);

        if(replay.size()>0){
            for (Replay rep : replay) {
                System.out.println(rep);
            }
        }else {

            System.out.println("还没有回复哦，亲！");
        }

        return "soure_list/forum_TZJM";
    }
}
