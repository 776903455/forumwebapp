<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/30
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
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
    <title>Title</title>
    <style>
        *{
            padding: 0;
            margin: 0;
        }
        .personInfo .imgs1{
            width: 1366px;
            height: 620px;
            position: absolute;
            opacity: 0.2;
            z-index: 1;



        }
        .personInfo2{
          position: relative;
            z-index: 3;
        }
        .personInfo1{
            width: 1366px;
            height: 520px;
            position: relative;
            z-index: 3;
        }

        .center{
            margin-left: 100px;
            margin-top: 20px;
            width: 1266px;
            height: auto;
        }
        .center_top{
            width: 1166px;
            height: 80px;
            border-bottom: 1px dashed gray;
            margin-bottom: 20px;
        }
        .center_top img{
            width: 50px;
            height: 50px;
        }
        .center_top span{
            font-size: 15px;
            margin-left: 20px;
        }

        .button_top{
            width: 1166px;
            height: auto;
        }
        .button_top .span1{
            width: 50px;
            height: 50px;
            display: inline-block;
            border: 1px solid grey;
            text-align: center;
            line-height: 50px;
            border-bottom: none;
        }
        .button_top .span2{
            width: 100px;
            height: 50px;
            display: inline-block;
            border: 1px solid grey;
            text-align: center;
            line-height: 50px;
            margin-left: 10px;
            border-bottom: none;
        }
        .button_top a{
            text-decoration: none;
            color: #000000;
            font-size: 15px;
        }

        .center_buttom table{
            width: 1166px;
            height: auto;
            border: solid 1px grey;

        }
        .center_buttom table tr{
            border-bottom: 1px dashed grey;
        }
        .center_buttom table p{

            margin-left: 20px;
        }
        .center_buttom table span{

            margin-left: 20px;
        }

        .buttom{
            width: 100%;
            height: 50px;
            background: rgba(0,0,0,0.9);
            margin-top: 5px;
            font-size: 15px;
            color: white;
            text-align: center;
        }
        .buttom span{
            display: inline-block;
            width: 300px;
            height: 30px;
            padding-top: 10px;

        }
    </style>

</head>
<body>

<div>
<div class="personInfo" >
    <img class="imgs1" src="${pageContext.request.contextPath}/static/img/personInfo.jpg" />
</div>
    <div class="personInfo2"><%@include file="menu.jsp"%></div>
<div class="personInfo1">
    <!--路径导航-->
    <div class="path_navigation">
        <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/toIndex.do">首页</a></li>
            <li><a href="index.html">${userInfo.username}</a></li>
            <li><a href="#">个人信息</a></li>
        </ol>
    </div>


    <div class="center">
        <div class="center_top">
            <a href="#"><img src="${pageContext.request.contextPath}/${userInfo.uimage}"/></a>
            <span>${userInfo.username}</span>
        </div>

        <div class="center_buttom">
            <div class="button_top">
                <span class="span1"><a href="#">主题</a></span>
                <span class="span2"><a href="#">个人资料</a></span>
            </div>
            <table >
                <tr height="50px">
                    <th colspan="3">
                        <p>${userInfo.username}(Uid=${userInfo.uid})</p>
                        <p>邮箱状态 &nbsp;&nbsp;
                            <c:choose>
                                <c:when test="${userInfo.state==0}">未验证</c:when>
                                <c:when test="${userInfo.state==1}">已验证</c:when>
                            </c:choose>
                        </p>
                    </th>
                </tr>
                <tr height="30px">
                    <th colspan="3">
                        <span>统计信息</span>&nbsp;
                        <span> 好友数20</span>&nbsp;
                        <span> 回帖数 60</span>&nbsp;
                        <span>主题数4</span>
                    </th>

                </tr>
                <tr height="30px">
                    <th><span>性别 &nbsp;${userInfo.sex}</span></th>
                    <th colspan="2">
                        <span>生日：xxxx</span>
                    </th>

                </tr>
                <tr height="80px">
                    <th>
                        <p>活跃概况</p>
                        <p>用户组&nbsp;中级会员 </p>
                        <p>注册时间&nbsp;${userInfo.regtime}</p>
                        <p>上次访问IP&nbsp;59.33.171.191:41190 - - 中国广东惠州</p>
                    </th>
                    <th>
                        <p>最后访问时间&nbsp;${userInfo.activetime}</p>
                        <p>上次活动时间 ${userInfo.activetime}</p>
                    </th>
                    <th>
                        <p>注册IP&nbsp;14.211.16.200 - - 中国广东中山</p>
                        <p>上次发表时间&nbsp;" 2019-8-31 23:09</p>
                    </th>
                </tr>
                <tr>
                    <th>
                        <p>统计信息</p>
                        <p>已用空间&nbsp;0B</p>
                    </th>
                    <th colspan="2">
                        <p>金币&nbsp;${userInfo.score}</p>
                    </th>

                </tr>

            </table>
        </div>
    </div>
</div>
    <div style="width: 100%; height:50px ;"></div>

</div>

<div class="buttom">
    <span>©2020电科大嵌入B班lyh毕业设计&nbsp</span>
</div>
</body>
</html>
