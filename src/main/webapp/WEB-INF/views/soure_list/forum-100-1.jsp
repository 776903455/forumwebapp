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
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/forum-100-1.css">
    <link href="${pageContext.request.contextPath}/static/css/menu.css" rel="stylesheet">
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
<%@include file="../menu.jsp"%>




<!--center-->
<div style="background: url(${pageContext.request.contextPath}/static/img/tieziback.jpg);">

    <div class="forum_center">
        <!--版块信息-->
        <div class="center_head">

            <c:if test="${cs.csid>=1&&cs.csid<=8}">
            <!--路径导航-->
            <div class="path_navigation">
                <ol class="breadcrumb">
                    <li><a href="${pageContext.request.contextPath}/toIndex.do">首页</a></li>
                    <li><a href="${pageContext.request.contextPath}/toSkillExchange.do?cid=3">技术交流</a></li>
                    <li><a href="#">${cs.csname}</a></li>
                </ol>
            </div>
            </c:if>

            <c:if test="${cs.csid>=9&&cs.csid<=17}">
                <!--路径导航-->
                <div class="path_navigation">
                    <ol class="breadcrumb">
                        <li><a href="${pageContext.request.contextPath}/toIndex.do">首页</a></li>
                        <li><a href="${pageContext.request.contextPath}/toFreeSource.do?cid=1">免费资源</a></li>
                        <li><a href="#">${cs.csname}</a></li>
                    </ol>
                </div>
            </c:if>

            <div class="head_title">
               <c:if test="${cs.csid>=1&&cs.csid<=8}">
            <span class="head_title_text">
                <img class="jishufenxiang" src="${pageContext.request.contextPath}/static/img/jishifenxiang.jpg">
               <em style="line-height: 60px"> 技术交流</em>
                 <p class="jishidian">交流技术，巩固学习，早日成为技术大牛！</p>
            </span>
               </c:if>
                <c:if test="${cs.csid>=9&&cs.csid<=17}">
            <span class="head_title_text">
                <img class="mianfeiziyuan" src="${pageContext.request.contextPath}/static/img/mianfeiziyuan.jpg">
               <em style="line-height: 60px"> 免费资源</em>
                 <p class="jishidian">所有学科，全部资源，点击对应学科，通通免费下载啦！！</p>
            </span>
                </c:if>

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
            <strong>${cs.csname}区</strong>
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
                            <a href="${pageContext.request.contextPath}/selectAllArtByCsid.do?csid=${csid}&pn=1" aria-label="Next">
                                <span aria-hidden="true">首页</span>
                            </a>
                        </li>
                        <c:if test="${pageInfo.hasPreviousPage}">
                            <li>
                                <a href="${pageContext.request.contextPath}/selectAllArtByCsid.do?csid=${csid}&pn=${pageInfo.pageNum-1}" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                        </c:if>


                        <c:forEach items="${pageInfo.navigatepageNums}" var="navNums">
                            <c:if test="${navNums==pageInfo.pageNum}">
                                <li class="active"><a href="#">${navNums}</a></li>
                            </c:if>
                            <c:if test="${navNums!=pageInfo.pageNum}">
                                <li ><a href="${pageContext.request.contextPath}/selectAllArtByCsid.do?csid=${csid}&pn=${navNums}">${navNums}</a></li>
                            </c:if>
                        </c:forEach>

                        <c:if test="${pageInfo.hasNextPage}">
                            <li>
                                <a href="${pageContext.request.contextPath}/selectAllArtByCsid.do?csid=${csid}&pn=${pageInfo.pageNum+1}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </c:if>


                        <li>
                            <a href="${pageContext.request.contextPath}/selectAllArtByCsid.do?csid=${csid}&pn=${pageInfo.pages}" aria-label="Next">
                                <span aria-hidden="true">尾页</span>
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
                            <a href="${pageContext.request.contextPath}/selectAllArtByCsid.do?csid=${csid}&pn=1" aria-label="Next">
                                <span aria-hidden="true">首页</span>
                            </a>
                        </li>
                        <c:if test="${pageInfo.hasPreviousPage}">
                            <li>
                                <a href="${pageContext.request.contextPath}/selectAllArtByCsid.do?csid=${csid}&pn=${pageInfo.pageNum-1}" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                        </c:if>


                        <c:forEach items="${pageInfo.navigatepageNums}" var="navNums">
                            <c:if test="${navNums==pageInfo.pageNum}">
                                <li class="active"><a href="#">${navNums}</a></li>
                            </c:if>
                            <c:if test="${navNums!=pageInfo.pageNum}">
                                <li ><a href="${pageContext.request.contextPath}/selectAllArtByCsid.do?csid=${csid}&pn=${navNums}">${navNums}</a></li>
                            </c:if>
                        </c:forEach>

                        <c:if test="${pageInfo.hasNextPage}">
                            <li>
                                <a href="${pageContext.request.contextPath}/selectAllArtByCsid.do?csid=${csid}&pn=${pageInfo.pageNum+1}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </c:if>
                        <li>
                            <a href="${pageContext.request.contextPath}/selectAllArtByCsid.do?csid=${csid}&pn=${pageInfo.pages}" aria-label="Next">
                                <span aria-hidden="true">尾页</span>
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
<script src="${pageContext.request.contextPath}/static/js/menu.js"></script>
</html>