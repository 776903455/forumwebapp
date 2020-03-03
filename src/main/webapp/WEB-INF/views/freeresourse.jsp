<%@ taglib prefix="cs" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/static/css/skillexchange.css" rel="stylesheet">
    <title>IT在线学习平台</title>
    <style>
        *{
            padding: 0;
            margin: 0;

        }

        .head_title{
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
            background: rgba(255,255,255,0.8);
            position: absolute;
            top: 0px;
            font-size: 30px;
        }
        .jishidian{
            display: inline;
            position: absolute;
            top: 80px;
            left: 120px;
            font-size: 20px;

        }
        .head_title_img{
            position: absolute;
            border: 1px black solid;
            right: 0;
        }
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

<%@include file="menu.jsp"%>


<!--路径导航-->
<div class="path_navigation">
    <ol class="breadcrumb">
        <li><a href="${pageContext.request.contextPath}/toIndex.do">首页</a></li>
        <li><a href="#">免费资源</a></li>
    </ol>
</div>


<div class="head_title0" style="width: 1366px;height: 150px;background: rgba(0,0,0,0.05)" >
    <div class="head_title">

            <span class="head_title_text">
                <img class="mianfeiziyuan" src="${pageContext.request.contextPath}/static/img/mianfeiziyuan.jpg">
               <em style="line-height: 60px"> 免费资源</em>
                 <p class="jishidian">所有学科，全部资源，点击对应学科，通通免费下载啦！！</p>
            </span>

        <img class="head_title_img" src="${pageContext.request.contextPath}/static/img/2.jpg">
    </div>
</div>

<div class="center_skillexchange">
    <!--热门资源-->
    <div class="center_index_hot">
        <div class="hot_resource_top">
					<span class="hot_tital_txt">
						<strong>热</strong>&nbsp;&nbsp;
						<strong>门</strong>&nbsp;&nbsp;
						<strong>资</strong>&nbsp;&nbsp;
						<strong>源</strong>&nbsp;&nbsp;
					</span>
        </div>
        <div class="hot_resource_buttom">
            <div class="hot_top_buttom_top">
                <span><a href=""><img src="${pageContext.request.contextPath}/static/img/hot_img1.jpg"></a></span>
                <span><a href=""><img src="${pageContext.request.contextPath}/static/img/hot_img2.jpg"></a></span>
                <span><a href=""><img src="${pageContext.request.contextPath}/static/img/hot_img3.jpg"></a></span>
            </div>
            <div class="hot_top_buttom_buttom">
                <div class="hot_top_buttom_buttom_left">
                    <ul>
                        <c:forEach items="${articles}" var="article">
                        <li style="border-bottom: 1px grey dashed;"><a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=${article.aid}">${article.aname}</a></li>
                        </c:forEach>

                    </ul>
                </div>
                <div class="hot_top_buttom_buttom_rigth">
                    <ul>
                        <c:forEach items="${articles1}" var="article1">
                            <li style="border-bottom: 1px grey dashed;"><a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=${article1.aid}">${article1.aname}</a></li>
                        </c:forEach>

                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--子版块-->
    <div class="center_study_plate">
        <p class="plate_title">子版块</p>
        <div class="plate_content">
            <div class="plate_content_left">
                <ul>
                    <cs:forEach items="${freeCsList}" var="freecsList">
                    <li>
                        <a href=""><img src="${pageContext.request.contextPath}/${freecsList.csimage}"></a>
                        <span><a style="text-decoration: none" href="${pageContext.request.contextPath}/selectAllArtByCsid.do?csid=${freecsList.csid}">${freecsList.csname}</a></span>
                        <em>主题：2w 贴数：${freecsList.artList.size()}</em>
                        <p><a href="">${freecsList.artList.get(0).aname}</a></p>
                        <span class="plate_time" style="top: 100px; left: 100px;position: absolute;color: rgb(30 144 255);">
                            ${freecsList.artList.get(0).adate}</span>
                    </li>

                    </cs:forEach>
                </ul>
            </div>
            <div class="plate_content_right">
                <div ><img class="plate_content_right" src="${pageContext.request.contextPath}/static/img/plate_content_right.jpg"></div>
            </div>
        </div>

    </div>

</div>

    <%@include file="buttom.jsp"%>


</body>
</html>