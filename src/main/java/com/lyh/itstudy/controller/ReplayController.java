package com.lyh.itstudy.controller;

import com.lyh.itstudy.dao.ReplayMapper;
import com.lyh.itstudy.model.Replay;
import com.lyh.itstudy.service.ReplayService;
import com.lyh.itstudy.utils.GetTimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

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
    public void savaReplay(@RequestParam("username")String username,@RequestParam("aid")Integer aid,
                             @RequestParam("textearetext")String textearetext){
        Replay replay=new Replay();
        replay.setRepdate(GetTimeUtil.getDateFormat());
        replay.setReptxt(textearetext);
       replay.setRepname(username);
        replay.setAid(aid);
        replayService.savaReplay(replay);

    }
}
