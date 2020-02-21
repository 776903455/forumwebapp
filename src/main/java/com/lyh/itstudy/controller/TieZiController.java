package com.lyh.itstudy.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.itstudy.model.Article;
import com.lyh.itstudy.model.Categorysecond;
import com.lyh.itstudy.model.Replay;
import com.lyh.itstudy.model.User;
import com.lyh.itstudy.service.ArticleService;
import com.lyh.itstudy.service.CategorySecondService;
import com.lyh.itstudy.service.ReplayService;
import com.lyh.itstudy.service.UserService;
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

    @Autowired
    private UserService userService;

    /*去发帖界面*/
    @RequestMapping("tofatiejiemian")
    public String tofatiejiemian(@RequestParam("text")String text,@RequestParam("uid")Integer uid,Model model){

        text=text.replaceAll(" ","+");
        /*判断是免费资源模块还是技术交流模块*/
        String text1=text.substring(0,4);

        model.addAttribute("text1",text1);
        model.addAttribute("text",text);
        model.addAttribute("uid",uid);
        return "soure_list/fatiejiemian";
    }
/*保存帖子*/
    @RequestMapping("saveTieZi")
    public String saveTieZi(Article article, HttpServletRequest request){
        System.out.println("money="+article.getAmoney());

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
    public  String selectAllArtByCsid(@RequestParam("csid")Integer csid,
                                      @RequestParam(value = "pn",defaultValue="1")int pn,Model model){


        /*查询热门主题帖*/
        List<Article> hotList=  articleService.findHotArt(csid);
        model.addAttribute("hotList",hotList);
        /*查询最新主题帖*/
        List<Article> newsList=  articleService.findNewsArt(csid);
        model.addAttribute("newsList",newsList);


        /*根据csid查找二级目录名字*/
        Categorysecond cs=categorySecondService.findCsByCsid(csid);
        model.addAttribute("cs",cs);


        //使用pagehelper分页插件进行分页
            PageHelper.startPage(pn,5);
           List<Article> artLists= articleService.findArtByCsid(csid);
           PageInfo page = new PageInfo(artLists,5);



           model.addAttribute("pageInfo",page);
           model.addAttribute("csid",csid);


             return "soure_list/forum-100-1";
    }


    /*根据aid查询帖子信息，并跳转至具体帖子信息界面*/
    @RequestMapping("selectArtByAid")
    public String selectArtByAid(@RequestParam("aid")Integer aid,Model model){
        /*根据aid查询帖子信息*/
        Article article=articleService.selectArtByAid(aid);
        /*通过uid查找发帖用户*/
        Integer uid = article.getUid();
        User artUser = userService.selectByUid(uid);
        /*格式化时间*/
        List<Replay> replist = article.getReplist();
        /*查看人数增加*/
        Integer loonum=article.getLooknum()+1;
         articleService.addLookNum(aid,loonum);

        String artTime= GetTimeUtil.getDate(article.getAdate());
        /*获取文章内容，并且根据"."将其分成一个字符串数组，然后返回前端页面*/
        String[] arrTxt = article.getAtxte().split("。");


        model.addAttribute("arrTxt",arrTxt);
        model.addAttribute("article",article);
        model.addAttribute("artTime",artTime);
        model.addAttribute("artUser",artUser);


        /*根据aid获取帖子的回复数据*/
        PageHelper.startPage(1,5);
        List<Replay> replay =replayService.selectRepByAid(aid);
        PageInfo<Replay> reppage = new PageInfo(replay,5);
        int[] navigatepageNums =reppage.getNavigatepageNums();
        if(replay.size()>0){
            for (Replay rep : replay) {
                Article article1 = rep.getArticle();
                User user = rep.getUser();
                System.out.println(rep.getRepid()+"-"+rep.getReptxt()+"-"+rep.getRepdate()+"-"+rep.getUid()+"-"+
                        article.getAid()+"-"+article.getAname()+"-"+article.getUid()+"-"+
                        user.getUid()+"-"+user.getUsername()+"-"+user.getUimage()
                            );
            }
            /*时间解析*/

            model.addAttribute("replaylist",reppage);

        }else {

            System.out.println("还没有回复哦，亲！");
        }

        return "soure_list/forum_TZJM";

    }


    /*
     *功能描述 根据主页热门主题查询相应帖子
     * @author lyh
     * @date 2020/2/21
     * @param [c1, c2, model]
     * @return java.lang.String
    */
    @RequestMapping("findHotArtByCsid")
    public String findHotArtByCsid(@RequestParam("c1") Integer c1,@RequestParam("c2") Integer c2,
                                   @RequestParam(value = "pn",defaultValue="1")int pn,Model model){

        /*查询热门主题帖*/
        List<Article> hotList=  articleService.findAllHotArt(c1,c2);
        model.addAttribute("hotList",hotList);
        /*查询最新主题帖*/
        List<Article> newsList=  articleService.findAllNewsArt(c1,c2);
        model.addAttribute("newsList",newsList);

       PageHelper.startPage(pn,5);
        List<Article> articles= articleService.findHotArtByCsid(c1,c2);
        PageInfo page = new PageInfo(articles,5);



        model.addAttribute("pageInfo",page);
        model.addAttribute("c1",c1);
        model.addAttribute("c2",c2);
        return "soure_list/forum-100-2";
    }

}
