<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<html>
<head>

    <style>
        * {
            padding: 0;
            margin: 0;

        }

        .head_title {
            width: 1266px;
            height: 150px;
            position: relative;
            margin-top: 0;
            margin-left: 100px;
        }
        .head_title_text {

            line-height: 20px;
            width: 450px;
            height: 150px;
            display: inline-block;
            background: rgba(255, 255, 255, 0.8);
            position: absolute;
            top: 0px;
            font-size: 30px;
        }

        .jishidian {
            display: inline;
            position: absolute;
            top: 80px;
            left: 120px;
            font-size: 20px;

        }

        .head_title_img {
            position: absolute;
            border: 1px black solid;
            right: 0;
        }

        .center_centers{
            width: 1200px;
            height: auto;

            margin-left: 100px;
            margin-top: 20px;
        }

        /*滚动信息*/
        .centers_head{
            width: 1200px;
            height: 30px;
            background: aliceblue;

        }
        .centers_head p img{
            margin-left: 30px;
        }
        .centers_head p a{
            margin-left: 20px;
        }

        .centers_buttom table{
            width: 1200px;
            height: auto;
            background: rgb(255 250 250);

        }
        .centers_buttom table tr td ul li{

            list-style: none;
            width: 580px;
            height: 40px;

            line-height: 40px;
            padding-left: 20px;
            margin-top: 2px;
            margin-left: 10px;
            font-size: 15px;
            border-bottom: 1px solid rgba(0,0,0,0.1);
        }


        /*帖子列表*/


        .center_button table{
            width: 1200px;
            height: auto;

            margin-top: 20px;
            margin-left: 100px;
        }

        .center_button table tr{
            height: 50px;
        }

        .centers_tital_text{
            margin-top: 20px;
            border: 1px solid rgba(0,0,0,0.3);
            line-height: 30px;
            height: 50px;
            width: 1200px;
            margin-left: 100px;
            padding: 5px;
        }


        .fenye {
            width: 1200px;
            height: 60px;

            margin-left: 100px;
            position: relative;
            overflow: hidden;
            border-bottom: 1px solid rgba(0,0,0,0.2);
        }

        #btn_fatie{
            margin: 0;
            padding: 0;
            width: 100px;
            height: 40px;
            padding: 5px;
            position: absolute;
            left: 0px;
            font-size: 20px;
            top: 10px;
        }
        #btn_fatie1{
            margin: 0;
            padding: 0;
            width: 100px;
            height: 40px;
            padding: 5px;
            position: absolute;
            left: 0px;
            font-size: 20px;
            top: 10px;
        }
        .page_fenye{
            overflow: hidden;
            margin: 0;
            padding: 0;
            position: absolute;
            left: 750px;
            top: 0px;
            width: 450px;

        }


        .button_tiezi_list1{
            background: rgba(0,0,0,0.1);
            height: 50px;
        }


        .button_tiezi_list2 .button_tiezi_list2_td1{
            width: 50px;
            height: auto;
            text-align: center;
            line-height: 20px;
        }
        .button_tiezi_list2 .button_tiezi_list2_td2{
            width: 750px;
            height: auto;
            padding-left: 20px;
            line-height: 20px;

        }
        .button_tiezi_list2 .button_tiezi_list2_td3{
            width: 133px;
            height: auto;

            line-height: 20px;
        }
        .button_tiezi_list2 .button_tiezi_list2_td4{
            width: 133px;
            height: auto;
            line-height: 20px;
        }
        .button_tiezi_list2 .button_tiezi_list2_td5{
            width: 133px;
            height: auto;
            line-height: 20px;
        }

        .center_button table tr:hover{
            background:rgb(250 240 230)
        }


    </style>
</head>
<body>

<%@include file="../menu.jsp"%>

<!--center-->
<div style="background: url(${pageContext.request.contextPath}/static/img/tieziback.jpg);">

    <div class="forum_center">
        <!--版块信息-->
        <div class="center_head">

            <!--路径导航-->
            <div class="path_navigation">
                <ol class="breadcrumb">
                    <li><a href="../index.html">首页</a></li>
                    <li><a href="../index.html">学习交流</a></li>
                    <li><a href="#">学习交流</a></li>
                    <li><a href="#">javaEE学习交流</a></li>
                </ol>
            </div>

            <div class="head_title">

            <span class="head_title_text">
                <img class="jishufenxiang" src="${pageContext.request.contextPath}/static/img/jishifenxiang.jpg">
               <em style="line-height: 60px"> 技术交流</em>
                 <p class="jishidian">交流技术，巩固学习，早日成为技术大牛！</p>
            </span>

                <img class="head_title_img" src="${pageContext.request.contextPath}/static/img/2.jpg">
            </div>
        </div>
        <!--推荐阅读-->
        <div class="center_centers">

            <!--动态滚动信息-->
            <div class="centers_head">


                <p>
                    <img src="${pageContext.request.contextPath}/static/img/xiaxi.jpg">
                    <a href="#">实现动态滚动信息</a>
                </p>
            </div>
            <!--推荐阅读-->
            <div class="centers_buttom">

                <table>
                    <tr style="background: rgba(0,0,0,0.05);height: 40px;">
                        <td><span style="padding-left: 20px; font-size: 20px;"><strong>热门主题</strong></span></td>
                        <td><span style="padding-left: 20px; font-size: 20px;"><strong>最新主题</strong></span></td>
                    </tr>
                    <tr >
                        <td>
                            <ul>
                                <c:forEach items="${hotList}" var="hostlist">
                                <li><a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=${hostlist.aid}">${hostlist.aname}</a></li>
                                </c:forEach>
                            </ul>
                        </td>
                        <td>
                            <ul>
                                <c:forEach items="${newsList}" var="newslist">
                                    <li><a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=${newslist.aid}">${newslist.aname}</a></li>
                                </c:forEach>
                            </ul>
                        </td>
                    </tr>
                </table>
            </div>

        </div>


        <p class="centers_tital_text">
            <strong>javaEE交流区</strong>
            今日：6 &nbsp;&nbsp;主题：244 &nbsp;&nbsp;排名：21
        </p>
        <!--分页-->
        <div class="fenye">

            <input  class="btn btn-info" id="btn_fatie"  type="button"  value="发帖"/>
            <!--分页-->
            <div class="page_fenye">
                <nav style="width: 650px; padding-left: 20px;">
                    <ul class="pagination">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">6</a></li>
                        <li><a href="#">7</a></li>
                        <li><a href="#">8</a></li>
                        <li><a href="#">9</a></li>
                        <li><a href="#">10</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <!--帖子列表-->
        <div class="center_button">
            <table border="1px" bordercolor="#000000">
                <tr class="button_tiezi_list1" >

                    <td width="50px"><input  type="button" value="全部主题" /></td>
                    <td width="750px">

                        <span><a href="">最新</a></span>
                        <span><a href="">热门</a></span>
                        <span><a href="">热帖</a></span>
                        <span><a href="">精华</a></span>
                        <div class="dropdown" style="display: inline-block;">
                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                全部时间
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                <li><a href="#">一天</a></li>
                                <li><a href="#">三天</a></li>
                                <li><a href="#">一周</a></li>
                                <li><a href="#">一个月</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">更久</a></li>
                            </ul>
                        </div>
                    </td>

                    <td width="133px"> 作者</td>
                    <td width="133px"> 回复/查看</td>
                    <td width="133px"> 最后发表</td>

                </tr>
                <tr class="button_tiezi_list2" >

                    <td class="button_tiezi_list2_td1">255</td>
                    <td class="button_tiezi_list2_td2">
                        <a href="${pageContext.request.contextPath}/selectArtByAid.do">
                            springmvc拦截器入门及其执行顺序源码分析springmvc拦截器入门及其执行顺序源码分析
                        </a>
                    </td>
                    <td class="button_tiezi_list2_td3">lyh</td>
                    <td class="button_tiezi_list2_td4">2846</td>
                    <td class="button_tiezi_list2_td5">asdahjas</td>
                </tr>

                <tr class="button_tiezi_list2" >
                    <td class="button_tiezi_list2_td1">255</td>
                    <td class="button_tiezi_list2_td2">springmvc拦截器入门及其执行顺序源码分析</td>
                    <td class="button_tiezi_list2_td3">lyh</td>
                    <td class="button_tiezi_list2_td4">2846</td>
                    <td class="button_tiezi_list2_td5">asdahjas</td>
                </tr>

                <tr class="button_tiezi_list2" >
                    <td class="button_tiezi_list2_td1">255</td>
                    <td class="button_tiezi_list2_td2">springmvc拦截器入门及其执行顺序源码分析</td>
                    <td class="button_tiezi_list2_td3">lyh</td>
                    <td class="button_tiezi_list2_td4">2846</td>
                    <td class="button_tiezi_list2_td5">asdahjas</td>
                </tr>

                <tr class="button_tiezi_list2" >
                    <td class="button_tiezi_list2_td1">255</td>
                    <td class="button_tiezi_list2_td2">springmvc拦截器入门及其执行顺序源码分析</td>
                    <td class="button_tiezi_list2_td3">lyh</td>
                    <td class="button_tiezi_list2_td4">2846</td>
                    <td class="button_tiezi_list2_td5">asdahjas</td>
                </tr>

                <tr class="button_tiezi_list2" >
                    <td class="button_tiezi_list2_td1">255</td>
                    <td class="button_tiezi_list2_td2">springmvc拦截器入门及其执行顺序源码分析</td>
                    <td class="button_tiezi_list2_td3">lyh</td>
                    <td class="button_tiezi_list2_td4">2846</td>
                    <td class="button_tiezi_list2_td5">asdahjas</td>
                </tr>

                <tr class="button_tiezi_list2" >
                    <td class="button_tiezi_list2_td1">255</td>
                    <td class="button_tiezi_list2_td2">springmvc拦截器入门及其执行顺序源码分析</td>
                    <td class="button_tiezi_list2_td3">lyh</td>
                    <td class="button_tiezi_list2_td4">2846</td>
                    <td class="button_tiezi_list2_td5">asdahjas</td>
                </tr>

                <tr class="button_tiezi_list2" >
                    <td class="button_tiezi_list2_td1">255</td>
                    <td class="button_tiezi_list2_td2">springmvc拦截器入门及其执行顺序源码分析</td>
                    <td class="button_tiezi_list2_td3">lyh</td>
                    <td class="button_tiezi_list2_td4">2846</td>
                    <td class="button_tiezi_list2_td5">asdahjas</td>
                </tr>
                <tr class="button_tiezi_list2" >
                    <td class="button_tiezi_list2_td1">255</td>
                    <td class="button_tiezi_list2_td2">springmvc拦截器入门及其执行顺序源码分析</td>
                    <td class="button_tiezi_list2_td3">lyh</td>
                    <td class="button_tiezi_list2_td4">2846</td>
                    <td class="button_tiezi_list2_td5">asdahjas</td>
                </tr>
                <tr class="button_tiezi_list2" >
                    <td class="button_tiezi_list2_td1">255</td>
                    <td class="button_tiezi_list2_td2">springmvc拦截器入门及其执行顺序源码分析</td>
                    <td class="button_tiezi_list2_td3">lyh</td>
                    <td class="button_tiezi_list2_td4">2846</td>
                    <td class="button_tiezi_list2_td5">asdahjas</td>
                </tr>
                <tr class="button_tiezi_list2" >
                    <td class="button_tiezi_list2_td1">255</td>
                    <td class="button_tiezi_list2_td2">springmvc拦截器入门及其执行顺序源码分析</td>
                    <td class="button_tiezi_list2_td3">lyh</td>
                    <td class="button_tiezi_list2_td4">2846</td>
                    <td class="button_tiezi_list2_td5">asdahjas</td>
                </tr>

            </table>
        </div>

        <!--分页-->
        <div class="fenye" style="margin-top: 20px;">

            <input  class="btn btn-info" id="btn_fatie1"  type="button"  value="发帖"/>
            <div class="page_fenye">
                <nav style="width: 650px; padding-left: 20px;">
                    <ul class="pagination">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">6</a></li>
                        <li><a href="#">7</a></li>
                        <li><a href="#">8</a></li>
                        <li><a href="#">9</a></li>
                        <li><a href="#">10</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>


    <!--底部-->
    <div class="buttom_index">

        <div class="buttom_index_top">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <img src="${pageContext.request.contextPath}/static/img/button_index_img3.png" />
                        <span >足不出户学编程</span>
                    </div>
                    <div class="col-md-4">
                        <img src="${pageContext.request.contextPath}/static/img/button_index_img1.png" />
                        <span>学习经验共分享</span>
                    </div>
                    <div class="col-md-4">
                        <img src="${pageContext.request.contextPath}/static/img/button_index_img2.png" />
                        <span>前沿技术实时更新</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="buttom_index_buttom">
            <p style="font-size: 18px; color: white;margin-top: 30px;margin-left: 150px;">友情链接:</p>
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <ul>
                            <li><a href="http://jquery.cuishifeng.cn/">前端</a></li>
                            <li><a href="#">SpringCloud</a></li>
                            <li><a href="#">SpringBoot</a></li>
                            <li><a href="#">Redis</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">

                        <ul>
                            <li><a href="#">人工智能</a></li>
                            <li><a href="#">区块链/go</a></li>
                            <li><a href="#">消息队列</a></li>
                            <li><a href="#">微服务框架</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">

                        <ul>
                            <li><a href="#">大数据</a></li>
                            <li><a href="#">Linux</a></li>
                            <li><a href="#">Spring</a></li>
                            <li><a href="#">并发编程</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <img width="200px" height="100px" style="border-radius: 10px;opacity: 0.8;" src="${pageContext.request.contextPath}/static/img/run.jpg" />
                    </div>
                </div>
            </div>
        </div>

        <p style="text-align: center;margin-top: 30px; font-size: 15px;">
            <font color="cornflowerblue">©2020电科大嵌入B班lyh毕业设计&nbsp;</font>
        </p>
    </div>
</div>
</body>
</html>