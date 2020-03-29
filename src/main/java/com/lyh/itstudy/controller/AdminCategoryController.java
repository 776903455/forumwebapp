package com.lyh.itstudy.controller;

import com.lyh.itstudy.model.Category;
import com.lyh.itstudy.service.CategoryService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author lyh
 * @date 2020/3/14 -15:12
 */

@Controller
public class AdminCategoryController {
        @Autowired
    private CategoryService categoryService;


        @RequestMapping("adminFindAllCategory")
    public String adminFindAllCategory(Model model){
            List<Category> categories=categoryService.adminFindAllCategory();
            if(categories!=null){
                model.addAttribute("categories",categories);
                return "/admin/right_category";
            }else {
                model.addAttribute("info","暂时没有数据信息");
                return "/admin/right_category";
            }

        }


        /*添加数据*/
        @RequestMapping("addCategory")
    public String addCategory(Category category){
                categoryService.addCategory(category);
            return "redirect:adminFindAllCategory.do";
        }


        /*删除数据*/
        @RequestMapping("deleteCategory")
        public String deleteCategory(@RequestParam("cid")Integer cid){
            categoryService.deleteCategory(cid);
            return "redirect:adminFindAllCategory.do";
        }

    /*跳转至修改界面*/
    @RequestMapping("toUpdateJM")
    public String toUpdateJM(@RequestParam("cid")Integer cid,Model model){
        Category category=categoryService.AdminfindCategory(cid);
        model.addAttribute("admincategory",category);
        return "admin/update/categoryupdate";
    }

    /*修改操作*/
    @RequestMapping("updateCategory")
    public String updateCategory(Category category,Model model){
        categoryService.updateCategory(category);

        return "redirect:adminFindAllCategory.do";
    }

}
