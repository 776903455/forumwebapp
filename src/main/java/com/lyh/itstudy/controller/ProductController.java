package com.lyh.itstudy.controller;

import com.lyh.itstudy.model.Gift;
import com.lyh.itstudy.model.User;
import com.lyh.itstudy.service.GiftService;
import com.lyh.itstudy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

/**
 * @author lyh
 * @date 2020/2/7 -14:45
 */
@Controller
public class ProductController {

    @Autowired
    private GiftService giftService;
    @Autowired
    private UserService userService;


    @RequestMapping("toProductInfo")
    public String toProductInfo(@RequestParam("gid")Integer gid, Model model){

       Gift giftInfo= giftService.selectGiftByGid(gid);
       model.addAttribute("giftInfo",giftInfo);
        return "productInfo";
    }

 /*   @RequestMapping("exchangesuccess")
    public String exchangesuccess(){
        return "exchangesuccess";
    }
*/
    /*更新数据库用户和礼品数据*/
    @RequestMapping("exchangeGift")
    public String exchangeGift(@RequestParam("uid")Integer uid, @RequestParam("gid")Integer gid,
                               @RequestParam("gmoney")Integer gmoney, @RequestParam("score")Integer score,
                               @RequestParam("exchangenumber")Integer exchangenumber,HttpSession session,Model model){
        /*更新用户信息*/
        score=score-gmoney;
        exchangenumber=exchangenumber+1;
        userService.updateUserbyUid(uid,score,exchangenumber);
        User user = userService.selectByUid(uid);
        session.setAttribute("user",user);
        model.addAttribute("changeInfo"," 兑换礼物成功，礼品将在三天之内发货，注意提供地址哦，亲!");
        System.out.println(user.getExchangenumber());
        /*更新礼品信息*//*
        giftService.updateGift(pid);*/
        return "products";
    }

}
