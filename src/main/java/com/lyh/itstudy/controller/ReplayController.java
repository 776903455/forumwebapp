package com.lyh.itstudy.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.itstudy.dao.ReplayMapper;
import com.lyh.itstudy.model.Replay;
import com.lyh.itstudy.service.ReplayService;
import com.lyh.itstudy.utils.GetTimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author lyh
 * @date 2020/2/9 -10:15
 */

@Controller
public class ReplayController {

    @Autowired
    private ReplayService replayService;

    /*保存回帖信息*/
    @RequestMapping("savaReplay")
    public void savaReplay(@RequestParam("uid")Integer uid,@RequestParam("aid")Integer aid,
                             @RequestParam("textearetext")String textearetext,Model model){

        Replay replay=new Replay();
        replay.setRepdate(GetTimeUtil.getDateFormat());
        replay.setReptxt(textearetext);
        replay.setUid(uid);
        replay.setAid(aid);

        replayService.savaReplay(replay);

        /*保存帖子后，查询更新后的帖子数据，并遍历在前台*/
        PageHelper.startPage(1,5);
        List<Replay> replays = replayService.selectRepByAid(aid);
        PageInfo<Replay> reppage = new PageInfo(replays,5);
        int[] navigatepageNums =reppage.getNavigatepageNums();
        model.addAttribute("replaylist",reppage);

    }
}
