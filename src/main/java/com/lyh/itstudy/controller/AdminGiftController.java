package com.lyh.itstudy.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.itstudy.model.Article;
import com.lyh.itstudy.model.Gift;
import com.lyh.itstudy.service.ArticleService;
import com.lyh.itstudy.service.GiftService;
import com.lyh.itstudy.utils.GetTimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author lyh
 * @date 2020/3/15 -10:31
 */

@Controller
@MultipartConfig
public class AdminGiftController {

    @Autowired
    private GiftService giftService;

    @RequestMapping("adminFindAllGift")
    public String adminFindAllUser(Model model, @RequestParam(value = "pn",defaultValue="1")Integer pn){

        PageHelper.startPage(pn,8);

        List<Gift> gifts=giftService.adminFindAllGift();

        PageInfo giftPage=new PageInfo(gifts,5);
        if(gifts!=null){
            model.addAttribute("giftPage",giftPage);

            return "/admin/right_gift";
        }else {
            model.addAttribute("info","暂时没有数据信息");
            return "/admin/right_gift";
        }
    }


    @RequestMapping("deleteGift")
    public String deleteGift(@RequestParam("gid")Integer gid){

        giftService.deleteGift(gid);

        return "redirect:adminFindAllGift.do";
    }


    @RequestMapping("giftAdd")
    public String giftAdd(Gift gift,@RequestParam("addgimage")MultipartFile file ,HttpServletRequest request){



        gift.setGdate(GetTimeUtil.getDateFormat());
        gift.setIsHot(gift.getIsHot()==-1?0:gift.getIsHot());
        gift.setGmoney(gift.getGmoney()==null?0:gift.getGmoney());

        /*拿到图片文件名*/
        String filename = file.getOriginalFilename();
        /*拿到文件图片名后缀*/
        String typename = filename.substring(filename.lastIndexOf("."));
        /*获取一个随机名字*/
        String randonname = UUID.randomUUID().toString().replaceAll("-", "");
        /*拼接成一个新图片名字*/
        String newname=randonname+typename;
        System.out.println("新名字："+newname);
        /*获取存储文件的真实路径*/
        String realPath = request.getServletContext().getRealPath("/static/img/products");
        /*文件另存为*/
        try {
            file.transferTo(new File(realPath+"/"+newname));
            /*将图片路径存储在数据库*/
            newname="static/img/products/"+newname;
            gift.setGimage(newname);
           giftService.addGift(gift);
        } catch (IOException e) {
            e.printStackTrace();
        }


        return "redirect:adminFindAllGift.do";
    }


    @RequestMapping("toUpdateGift")
    public String toUpdateGift(@RequestParam("gid")Integer gid,Model model){


        Gift gift=giftService.toUpdateGift(gid);
        model.addAttribute("gift" ,gift);
        return "admin/update/giftupdate";
    }


    @RequestMapping("updateGift")
    public String updateGift(Gift gift,@RequestParam("updategimage")MultipartFile file,HttpServletRequest request){


        Gift gift1 = giftService.selectGiftByGid(gift.getGid());

            /*拿到图片文件名*/
            String filename = file.getOriginalFilename();
            String contentType = file.getContentType();
         System.out.println("contentType:"+contentType);
        if((contentType.equalsIgnoreCase("image/jpeg")||contentType.equalsIgnoreCase("image/png")||contentType.equalsIgnoreCase("image/gif"))){
             /*拿到文件图片名后缀*/
            String typename = filename.substring(filename.lastIndexOf("."));
            /*获取一个随机名字*/
            String randonname = UUID.randomUUID().toString().replaceAll("-", "");
            /*拼接成一个新图片名字*/
            String newname=randonname+typename;
            System.out.println("新名字："+newname);
            /*获取存储文件的真实路径*/
            String realPath = request.getServletContext().getRealPath("/static/img/products");
            /*文件另存为*/
            try {
                file.transferTo(new File(realPath+"/"+newname));
                /*将图片路径存储在数据库*/
                newname="static/img/products/"+newname;
                gift.setGimage(newname);
            } catch (IOException e) {
                e.printStackTrace();
            }

        }else {
            gift.setGimage(gift1.getGimage());
        }

        gift.setIsHot(gift.getIsHot()==-1?0:1);
        System.out.println(gift.getGdesc()+"--"+gift1.getGdesc());
        gift.setGdesc(gift.getGdesc().equals("")?gift1.getGdesc():gift.getGdesc());

        System.out.println("gift:"+gift);
        giftService.adminupdateGift(gift);

        return "redirect:adminFindAllGift.do";
    }


}
