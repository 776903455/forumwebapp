package com.lyh.itstudy.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.itstudy.dao.ReplayMapper;
import com.lyh.itstudy.model.Article;
import com.lyh.itstudy.model.Replay;
import com.lyh.itstudy.model.User;
import com.lyh.itstudy.service.ArticleService;
import com.lyh.itstudy.service.ReplayService;
import com.lyh.itstudy.service.UserService;
import com.lyh.itstudy.utils.GetTimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author lyh
 * @date 2020/2/9 -10:15
 */

@Controller
public class ReplayController {

    @Autowired
    private ReplayService replayService;

    @Autowired
    private ArticleService articleService;

    @Autowired
    private UserService userService;
    /*保存回帖信息*/
    @RequestMapping("savaReplay")

    public String  savaReplay(@RequestParam("uid")Integer uid, @RequestParam("aid")Integer aid,@RequestParam("flag")int flag,
                           @RequestParam(value = "pn",defaultValue = "1")int pn,@RequestParam("textearetext")String textearetext, Model model)  {

        System.out.println("text="+textearetext);
        Replay replays=new Replay();
        replays.setRepdate(GetTimeUtil.getDateFormat());
        replays.setReptxt(textearetext);
        replays.setUid(uid);
        replays.setAid(aid);

        replayService.savaReplay(replays);


        /*保存帖子后，查询更新后的回帖数据，并遍历在前台*/


        /*根据aid查询一级、二级目录信息*/
        Article cAndCs=articleService.selectCsByAid(aid);

        System.out.println("csid="+cAndCs.getCategorysecond().getCsid());

        /*根据aid查询帖子信息*/
        Article article=articleService.selectArtByAid(aid);
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

       if(flag==1) {
           return "soure_list/forum_TZJM1";
       }else {
           return "soure_list/forum_TZJM";
       }
    }

}
