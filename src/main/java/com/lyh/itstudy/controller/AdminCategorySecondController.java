package com.lyh.itstudy.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lyh.itstudy.model.Category;
import com.lyh.itstudy.model.Categorysecond;
import com.lyh.itstudy.service.CategorySecondService;
import com.lyh.itstudy.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.List;
import java.util.UUID;

/**
 * @author lyh
 * @date 2020/3/14 -15:12
 */

@Controller
@MultipartConfig
public class AdminCategorySecondController {
        @Autowired
    private CategorySecondService categorySecondService;


        @RequestMapping("adminFindAllCategorySecond")
    public String adminFindAllCategorySecond(Model model, @RequestParam(value = "pn",defaultValue="1")Integer pn){

            PageHelper.startPage(pn,8);
            List<Categorysecond> categorieseconds=categorySecondService.adminFindAllCategorySecond();
            PageInfo acsPage=new PageInfo(categorieseconds,5);
            if(categorieseconds!=null){
                model.addAttribute("acsPage",acsPage);
                model.addAttribute("categorieseconds",categorieseconds);
                return "/admin/right_categorysecond";
            }else {
                model.addAttribute("info","暂时没有数据信息");
                return "/admin/right_categorysecond";
            }

        }


    //*删除数据*//*
    @RequestMapping("deleteCategorySecond")
    public String deleteCategorySecond(@RequestParam("csid")Integer csid){
        categorySecondService.deleteCategorySecond(csid);
        return "redirect:adminFindAllCategorySecond.do";
    }

      //*添加数据*/
        @RequestMapping("addCategorySecond")
    public String addCategorySecond(Categorysecond categorysecond, @RequestParam("csimagefile")MultipartFile file, HttpServletRequest request,Model model){

            categorysecond.setCsimage(categorysecond.getCsname().equals("请选择")?"未定义":categorysecond.getCsname());
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
            String realPath = request.getServletContext().getRealPath("/static/img");
            /*文件另存为*/
            try {
                file.transferTo(new File(realPath+"/"+newname));
                /*将图片路径存储在数据库*/
                newname="static/img/"+newname;
                categorysecond.setCsimage(newname);
                System.out.println("cs:"+categorysecond);

               categorySecondService.addCategorySecond(categorysecond);
            } catch (IOException e) {
                model.addAttribute("errors", "文件格式错误");
                return "admin/add/categorysecondadd.jsp";
            }

            return "redirect:adminFindAllCategorySecond.do";

        }

    /*跳转至修改界面*/
    @RequestMapping("toUpdateCategorySecondJM")
    public String toUpdateCategorySecondJM(@RequestParam("csid")Integer csid,Model model){
        Categorysecond categorysecond=categorySecondService.toUpdateCategorySecondJM(csid);

        model.addAttribute("admincategorysecond",categorysecond);
        return "admin/update/categorysecondupdate";
    }




    /*修改操作*/
    @RequestMapping("updateCategorySecond")
    public String updateCategorySecond(Categorysecond categorysecond ,@RequestParam("updateimagefile")MultipartFile file, Model model,HttpServletRequest request){

        Categorysecond csByCsid = categorySecondService.findCsByCsid(categorysecond.getCsid());
        categorysecond.setCid(categorysecond.getCid()==-1?1:categorysecond.getCid());
        /*拿到图片文件名*/
        String filename = file.getOriginalFilename();
        String contentType = file.getContentType();
        if((contentType.equalsIgnoreCase("image/jpeg")||contentType.equalsIgnoreCase("image/png")||contentType.equalsIgnoreCase("image/gif"))) {
            /*拿到文件图片名后缀*/
            String typename = filename.substring(filename.lastIndexOf("."));
            /*获取一个随机名字*/
            String randonname = UUID.randomUUID().toString().replaceAll("-", "");
            /*拼接成一个新图片名字*/
            String newname = randonname + typename;
            System.out.println("新名字：" + newname);
            /*获取存储文件的真实路径*/
            String realPath = request.getServletContext().getRealPath("/static/img");
            /*文件另存为*/
            try {
                file.transferTo(new File(realPath + "/" + newname));
                /*将图片路径存储在数据库*/
                newname = "static/img/" + newname;
                categorysecond.setCsimage(newname);

            } catch (IOException e) {
                model.addAttribute("error", "文件格式错误");
                return "admin/add/categorysecondupdate.jsp";
            }
        }else {
            categorysecond.setCsimage(csByCsid.getCsimage());
        }

        categorySecondService.updateCategorySecond(categorysecond);
        return "redirect:adminFindAllCategorySecond.do";
    }


    @RequestMapping("getCategorySecondByCid")
    @ResponseBody
    public String getCategorySecondByCid(@RequestParam("cid")Integer cid) throws UnsupportedEncodingException {

       List<Categorysecond>categoryseconds= categorySecondService.getCategorySecondByCid(cid);
        JSONObject jsonObject=new JSONObject();
       String str=jsonObject.toJSONString(categoryseconds);
        System.out.println("str:"+str);
        return str;

    }

}
