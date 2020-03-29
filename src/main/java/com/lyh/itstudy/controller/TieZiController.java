package com.lyh.itstudy.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.itstudy.model.*;
import com.lyh.itstudy.service.ArticleService;
import com.lyh.itstudy.service.CategorySecondService;
import com.lyh.itstudy.service.ReplayService;
import com.lyh.itstudy.service.UserService;
import com.lyh.itstudy.utils.GetTimeUtil;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
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
        String text2=text.substring(5);
        model.addAttribute("text1",text1);
        model.addAttribute("text2",text2);
        model.addAttribute("text",text);
        model.addAttribute("uid",uid);
        return "WEB-INF/views/soure_list/fatiejiemian";
    }
/*保存帖子*/
    @RequestMapping("saveTieZi")
    public String saveTieZi(Article article, Model model,HttpServletRequest request){


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
        Categorysecond categorysecond=null;
        if(typename!=null) {
            typename = typename.substring(5);
            categorysecond= categorySecondService.findByCsname(typename);
            article.setCsid(categorysecond.getCsid());

        }else {
            System.out.println("没传过来");
        }
        /*获取url提取码*/
        String tqm = request.getParameter("tqm");
        Integer i=null;
        if(tqm!=null){
            /*拼接url地址*/
            String url=article.getResourseurl().concat("_"+tqm);

            String tqma = url.substring(url.lastIndexOf("_"));
            String yrl1=url.substring(0,url.lastIndexOf("_"));
            System.out.println(yrl1+"--"+tqma);

            article.setResourseurl(url);
        }
        i=articleService.saveArticle(article);
        if(i>0){
            System.out.println("帖子保存成功");
        }else {
            System.out.println("帖子保存失败");
        }

        selectAllArtByCsid(categorysecond.getCsid(),1,model);


        return "WEB-INF/views/soure_list/forum-100-1";
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


             return "WEB-INF/views/soure_list/forum-100-1";
    }


    /*根据aid查询帖子信息，并跳转至具体帖子信息界面*/
    @RequestMapping("selectArtByAid")
    public String selectArtByAid(@RequestParam("aid")Integer aid, @RequestParam(value = "pn",defaultValue="1")int pn, Model model, HttpSession session){

        /*根据aid查询一级、二级目录信息*/
        Article cAndCs=articleService.selectCsByAid(aid);

        System.out.println("csid="+cAndCs.getCategorysecond().getCsid());

        /*根据aid查询帖子信息*/
        Article article=articleService.selectArtByAid(aid);

        /*根据登录用户id查询其收藏状态*/
        User user1 = (User)session.getAttribute("user");
        String[] collNum=null;
        if(user1!=null){
            Userarticle userarticle= articleService.findArtByUid(user1.getUid());
            if (userarticle!=null){
                collNum = userarticle.getArtid().split(",");
                if(userarticle.getArtid().contains(String.valueOf(aid))){
                    model.addAttribute("collectionStatus",true);
                }else {
                    model.addAttribute("collectionStatus",false);
                }
                model.addAttribute("collNum",collNum.length);
            }else {
                model.addAttribute("collectionStatus",false);
            }


            /*根据登录用户id及帖子查询回复状态*/
            List<Replay> replays=replayService.findRepByUid(user1.getUid(),aid);
            System.out.println("reply:"+replays);
            if(replays.size()!=0){
                model.addAttribute("replayStatus",true);
            }else {
                model.addAttribute("replayStatus",false);
            }
        }




        /*通过uid查找发帖用户*/
        Integer uids = article.getUid();
        User artUser = userService.selectByUid(uids);

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
        model.addAttribute("cAndCs",cAndCs);




        /*根据aid获取帖子的回复数据*/
        PageHelper.startPage(pn,5);
        List<Replay> replay =replayService.selectRepByAid(aid);
        PageInfo<Replay> reppage = new PageInfo(replay,5);
        int[] navigatepageNums =reppage.getNavigatepageNums();
        if(replay.size()>0){
            for (Replay rep : replay) {
                Article article1 = rep.getArticle();
                User user = rep.getUser();
              /*  System.out.println(rep.getRepid()+"-"+rep.getReptxt()+"-"+rep.getRepdate()+"-"+rep.getUid()+"-"+
                        article.getAid()+"-"+article.getAname()+"-"+article.getUid()+"-"+
                        user.getUid()+"-"+user.getUsername()+"-"+user.getUimage()
                            );*/
            }
            /*时间解析*/

            model.addAttribute("replaylist",reppage);

        }else {

            System.out.println("还没有回复哦，亲！");
        }

        return  "WEB-INF/views/soure_list/forum_TZJM";

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
        return "WEB-INF/views/soure_list/forum-100-2";
    }



    /*
     *功能描述 用户收藏
     * @author lyh
     * @date 2020/3/29
     * @param [model]
     * @return void
    */
    @RequestMapping("userCollections")
    public void userCollections(Model model, @RequestParam("uid")Integer uid, @RequestParam("aid")Integer aid, HttpServletResponse response) throws IOException {

        System.out.println("asda"+aid+"-"+uid);
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        /*查看用户有无其他收藏*/
        Userarticle userarticle=articleService.findArtByUid(uid);
        if(userarticle==null){
            /*无收藏时创建一个收藏*/
            userarticle=new Userarticle();
            userarticle.setUid(uid);
            userarticle.setArtid(String.valueOf(aid));
            articleService.addCollections(userarticle);
            response.getWriter().write("200");
        }else {
            /*有帖子收藏时将帖子id拼接到其他收藏的帖子id*/
            String artid = userarticle.getArtid();
            if(artid.contains(String.valueOf(aid))){
                /*取消收藏*/
                String newArtid=null;
                String[] art = artid.split(",");
                if(art.length==1){
                    articleService.deleteCollections(userarticle);
                    return;
                }

                /*22 25,22,26*/
                for (int i = 0; i < art.length; i++) {
                    if(!(art[i].equals(String.valueOf(aid)))){
                        if(newArtid!=null){
                            newArtid=newArtid+","+newArtid;
                        }else {
                            newArtid=art[i];
                        }

                    }
                }
                userarticle.setArtid(newArtid);
                articleService.updateCollections(userarticle);
                response.getWriter().write("500");
            }else {
                artid=artid+","+aid;
                userarticle.setArtid(artid);
                articleService.updateCollections(userarticle);
                response.getWriter().write("200");
            }

        }

    }




}
