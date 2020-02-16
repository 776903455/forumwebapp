<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/forum-100-1.css">
    <html>
<head>
    <style>
        .head1 .container .row .search_img{
            width: 25px;
            height: 25px;
            position: absolute;
            top: 25px;
            right: 20px;

        }

        .touxiang_event{
            position: relative;

        }

        .folat_info{
            width:100px;
            height:auto;
            background:rgba(255,236,139,0.8);
            opacity:0;
            position:absolute;
            top:55px;
            right:90px;
            z-index:10;
        }
        .folat_info ul{
            margin: 0;
            padding: 0;
            width: 100px;
            height: auto;
        }
        .folat_info ul li{

            width: 100px;
            height: 30px;
            list-style: none;
            margin-top: 5px;
            border-bottom: 1px solid gray;
            font-size: 15px;
            line-height: 20px;
        }
        .folat_info ul li:hover{
            color: white;

        }


    </style>
</head>
<body>

<div class="head_index">

    <div class="head1">
        <div class="container">
            <div class="row">
                <div class="col-md-2"> <img src="${pageContext.request.contextPath}/static/img/title_left1.jpg" class="head1_left_img"></div>
                <div class="col-md-1"><a href="${pageContext.request.contextPath}/toIndex.do">首页</a></div>
                <div class="col-md-1"><a href="${pageContext.request.contextPath}/toFreeSource.do">免费资源</a></div>
                <div class="col-md-1"><a href="${pageContext.request.contextPath}/toStudyPath.do" >学习路线</a></div>
                <div class="col-md-1"><a href="${pageContext.request.contextPath}/toSkillExchange.do?cid=3">技术交流</a></div>
                <div class="col-md-1"><a href="${pageContext.request.contextPath}/toProducts.do">礼品兑换</a></div>
                <div class="col-md-1"><a href="#">最新活动</a></div>
                <div class="col-md-2">
                    <input  id="search_info" value=""/>
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/static/img/search_img.jpg" class="search_img" />
                    </a>
                </div>

                <div class="col-md-2" >
                    <c:if test="${sessionScope.user==null}">
                        <a href="${pageContext.request.contextPath}/toLogin.do" style="font-size: 15px; margin-top: 70px;margin-left: 120px;">登录 </a>
                        <a href="${pageContext.request.contextPath}/toRegister.do" style="font-size: 15px; margin-top: 70px;margin-left: 10px;">注册</a>
                    </c:if>

                    <c:if test="${sessionScope.user!=null}">
                        <div class="touxiang_event">
                            <p  style="width: 50px;height: 50px;display: inline">
                                <a href="${pageContext.request.contextPath}/toPersonInfo.do?username=${sessionScope.user.username}"><img  class="touxiang_img"  style="width: 50px;height: 50px;border-radius: 50%" src="${sessionScope.user.uimage}" ></a>
                            </p>
                            <span class="username_hide">${sessionScope.user.username}</span>

                            <div class="folat_info">
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/toPersonInfo.do?username=${sessionScope.user.username}" >个人信息</a></li>
                                    <li><span class="faitie_span" style="cursor: pointer">发帖</span></li>
                                    <li><a href="#">帖子</a></li>
                                        <%--    <li><a class="click_hide_gold" href="${pageContext.request.contextPath}/getScore.do?score=${sessionScope.user.score}&username=${sessionScope.user.username}">签到</a></li>--%>
                                    <li><span class="click_hide_gold">积分：${sessionScope.user.score}</span></li>
                                    <li><a  href="${pageContext.request.contextPath}/exit.do" >退出</a></li>
                                </ul>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>


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

                <c:forEach items="${pageInfo.list}" var="artpageinfo">
                <tr class="button_tiezi_list2" >

                    <td class="button_tiezi_list2_td1">${artpageinfo.aid}</td>
                    <td class="button_tiezi_list2_td2">
                        <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=${artpageinfo.aid}">
                            ${artpageinfo.aname}
                        </a>
                    </td>
                    <td class="button_tiezi_list2_td3">${artpageinfo.user.username}</td>
                    <td class="button_tiezi_list2_td4">28/${artpageinfo.looknum}</td>
                    <td class="button_tiezi_list2_td5">asdahjas</td>
                </tr>
                </c:forEach>
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
        <%@include file="../buttom.jsp"%>
</div>
</body>
</html>