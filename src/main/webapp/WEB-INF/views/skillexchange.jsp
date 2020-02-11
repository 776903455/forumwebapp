<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/static/css/skillexchange.css" rel="stylesheet">
    <title>IT在线学习平台</title>
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

    </style>
</head>
<body>

    <%@include file="menu.jsp"%>

<!--路径导航-->
<div class="path_navigation">
    <ol class="breadcrumb">
        <li><a href="index.html">首页</a></li>
        <li><a href="index.html">学习交流</a></li>
        <li><a href="#">技术交流</a></li>
    </ol>
</div>


<div class="head_title0" style="width: 1366px;height: 150px;background: rgba(0,0,0,0.05)">
    <div class="head_title">

            <span class="head_title_text">
                <img class="jishufenxiang" src="${pageContext.request.contextPath}/static/img/jishifenxiang.jpg">
               <em style="line-height: 60px"> 技术交流</em>
                 <p class="jishidian">交流技术，巩固学习，早日成为技术大牛！</p>
            </span>

        <img class="head_title_img" src="${pageContext.request.contextPath}/static/img/2.jpg">
    </div>
</div>

<div class="center_skillexchange">
    <!--热门资源-->
    <div class="center_index_hot">
        <div class="hot_resource_top">
					<span class="hot_tital_txt">
						<strong>最</strong>&nbsp;&nbsp;
						<strong>新</strong>&nbsp;&nbsp;
						<strong>字</strong>&nbsp;&nbsp;
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
                        <li><a href="#">黑马程序员——2019年全年开班计划表黑马程序员——2019年全年开班计划表黑马程序员——2019年全年开班计划表</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表马程序员——2019年全年开班计划表</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表</a></li>

                    </ul>
                </div>
                <div class="hot_top_buttom_buttom_rigth">
                    <ul>
                        <li><a href="#">黑马程序员——2019年全年开班计划表年全年开班计划表黑马程序员——2019</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表</a></li>

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
                    <c:forEach items="${csList}" var="cs">
                    <li>
                        <a href=""><img src="${pageContext.request.contextPath}/${cs.csimage}"></a>
                        <span><a style="text-decoration: none" href="${pageContext.request.contextPath}/selectAllArtByCsid.do?csid=${cs.csid}">${cs.csname}</a></span>
                        <em>主题：2w 贴数：2w</em>
                        <p><a href="">$阿诗丹顿 </a></p>
                        <span class="plate_time" style="top: 100px; left: 250px;position: absolute;color: rgb(30 144 255);">2020.3.2</span>
                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="plate_content_right">
                <div ><img class="plate_content_right" src="${pageContext.request.contextPath}/static/img/plate_content_right.jpg"></div>
            </div>
        </div>

    </div>

</div>

<div class="buttom_index">
    <div class="buttom_index_top">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/static/img/button_index_img3.png"/>
                    <span>足不出户学编程</span>
                </div>
                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/static/img/button_index_img1.png"/>
                    <span>学习经验共分享</span>
                </div>
                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/static/img/button_index_img2.png"/>
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
                    <img width="200px" height="100px" style="border-radius: 10px;opacity: 0.8;" src="${pageContext.request.contextPath}/static/img/run.jpg"/>
                </div>
            </div>
        </div>
    </div>

    <p style="text-align: center;margin-top: 30px; font-size: 15px;">
        <font color="cornflowerblue">©2020电科大嵌入B班lyh毕业设计&nbsp;</font>
    </p>
</div>


</body>
</html>