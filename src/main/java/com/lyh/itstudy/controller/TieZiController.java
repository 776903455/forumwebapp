package com.lyh.itstudy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * @author lyh
 * @date 2020/2/1 -13:46
 */
@Controller
public class TieZiController {


    /*去发帖界面*/
    @RequestMapping("tofatiejiemian")
    public String tofatiejiemian(@RequestParam("text")String text,Model model){

        text=text.replaceAll(" ","+");
        System.out.println(text);
        model.addAttribute("text",text);
        return "soure_list/fatiejiemian";
    }




}
