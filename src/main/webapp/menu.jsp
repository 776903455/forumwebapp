<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/26
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet">
        <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
        <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
        <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
        <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
        <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
<head>
    <title>Title</title>

    <style>
        .head1 .container .row .search_img{
            width: 25px;
            height: 25px;
            position: absolute;
            top: 25px;
            right: 20px;

        }
    </style>
</head>
<body>

<div class="head_index">
    <div class="head1">
        <div class="container">
            <div class="row">
                <div class="col-md-2"> <img src="${pageContext.request.contextPath}/static/img/title_left1.jpg" class="head1_left_img"></div>
                <div class="col-md-1"><a href="#">首页</a></div>
                <div class="col-md-1"><a href="freeresourse.html">免费资源</a></div>
                <div class="col-md-1"><a href="studypath.html">学习路线</a></div>
                <div class="col-md-1"><a href="skillexchange.html">技术交流</a></div>
                <div class="col-md-1"><a href="#">礼品兑换</a></div>
                <div class="col-md-1"><a href="#">最新活动</a></div>
                <div class="col-md-2">
                    <input  id="search_info" value=""/>
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/static/img/search_img.jpg" class="search_img" />
                    </a>
                </div>
                <div class="col-md-2">

                    <a href="${pageContext.request.contextPath}/toLogin.do" style="font-size: 15px; margin-top: 70px;margin-left: 120px;">登录 </a>
                    <a href="${pageContext.request.contextPath}/toRegister.do" style="font-size: 15px; margin-top: 70px;margin-left: 10px;">注册</a>


                    
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
