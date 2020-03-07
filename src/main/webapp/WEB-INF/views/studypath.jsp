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
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/static/css/studypath.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/static/css/menu.css" rel="stylesheet">
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
        <li><a href="#">学习路线图</a></li>
    </ol>
</div>




<div class="head_title0" style="width: 1366px;height: 150px;background: rgba(0,0,0,0.05)" >
    <div class="head_title">

		            <span class="head_title_text">
		                <img class="xuexiluxian" src="${pageContext.request.contextPath}/static/img/xuexiluxian.jpg">
		               <em style="line-height: 60px"> 学习路线图</em>
		                 <p class="jishidian">本版块下设所开学科所有学习路线图！</p>
		            </span>

        <img class="head_title_img" src="${pageContext.request.contextPath}/static/img/2.jpg">
    </div>
</div>

<!--路径选择-->
<div class="center_studypath">
    <div class="studypath_left">
        <img class="left_img" src="${pageContext.request.contextPath}/static/img/study_futrue.jpg" />
        <div class="left_info">
            <!--<div class="left_T">展望未来</div>-->
            <div class="empoly_t">谁无风暴劲雨时</div>
            <div>
                <div class="cricle_box">
                    <div class="cricle_s"></div>
                    <div class="cricle_txt">入门小白</div>
                </div>
                <div class="line_s"></div>
                <div class="cricle_box">
                    <div class="cricle_s"></div>
                    <div class="cricle_txt">堕云雾中</div>
                </div>
                <div class="line_s"></div>
                <div class="cricle_box">
                    <div class="cricle_s"></div>
                    <div class="cricle_txt">隅隅前行</div>
                </div>
                <div class="line_s"></div>
                <div class="cricle_box">
                    <div class="cricle_s"></div>
                    <div class="cricle_txt">明确方向</div>
                </div>
                <div class="line_s"></div>
                <div class="cricle_box">
                    <div class="cricle_s"></div>
                    <div class="cricle_txt">为之奋斗</div>
                </div>
                <div class="line_s"></div>
                <div class="cricle_box">
                    <div class="cricle_s"></div>
                    <div class="cricle_txt">持之以恒</div>
                </div>
                <div class="line_s"></div>
                <div class="cricle_box">
                    <div class="cricle_s"></div>
                    <div class="cricle_txt">一往无前</div>
                </div>
                <div class="line_s"></div>
                <div class="cricle_box">
                    <div class="cricle_s"></div>
                    <div class="cricle_txt">业界大牛</div>
                </div>
            </div>
            <div class="empoly_t">守得云开见月明</div>
        </div>

    </div>


    <div class="studypath_right">
        <div  class="right_con fl">
            <div class="right_img">
                <img src="${pageContext.request.contextPath}/static/img/icon1.png" >
            </div>
            <p class="right_txt1">Java</p>
            <p class="right_txt2">小白往这看</p>
            <a href="${pageContext.request.contextPath}/toJavaPath.do" class="btn btn-primary" target="_blank" style="font-size: 18px;">传送门</a>
        </div>
        <div  class="right_con fl">
            <div class="right_img">
                <img src="${pageContext.request.contextPath}/static/img/study_c++.png" >
            </div>
            <p class="right_txt1">C/C++</p>
            <p class="right_txt2">小白往这看</p>
            <a href="${pageContext.request.contextPath}/toC.do" class="btn btn-primary" target="_blank" style="font-size: 18px;">传送门</a>
        </div>
        <div  class="right_con fl">
            <div class="right_img">
                <img src="${pageContext.request.contextPath}/static/img/study_python.png" >
            </div>
            <p class="right_txt1">Python</p>
            <p class="right_txt2">小白往这看</p>
            <a href="${pageContext.request.contextPath}/toPython.do" class="btn btn-primary" target="_blank" style="font-size: 18px;">传送门</a>
        </div>
        <div  class="right_con fl">
            <div class="right_img">
                <img src="${pageContext.request.contextPath}/static/img/study_php.png" >
            </div>
            <p class="right_txt1">PHP</p>
            <p class="right_txt2">小白往这看</p>
            <a href="${pageContext.request.contextPath}/toPhp.do" class="btn btn-primary" target="_blank" style="font-size: 18px;">传送门</a>
        </div>

        <div  class="right_con1 fl">
            <div class="right_img">
                <img src="${pageContext.request.contextPath}/static/img/study_h5.png" >
            </div>
            <p class="right_txt1">H5前端/移动端</p>
            <p class="right_txt2">小白往这看</p>
            <a href="${pageContext.request.contextPath}/toHtml.do" class="btn btn-primary" target="_blank" style="font-size: 18px;">传送门</a>
        </div>
        <div  class="right_con1 fl">
            <div class="right_img">
                <img src="${pageContext.request.contextPath}/static/img/study_yjs.png" >
            </div>
            <p class="right_txt1">云计算</p>
            <p class="right_txt2">小白往这看</p>
            <a href="${pageContext.request.contextPath}/toYunjissian.do" class="btn btn-primary" target="_blank" style="font-size: 18px;">传送门</a>
        </div>
        <div  class="right_con1 fl">
            <div class="right_img">
                <img src="${pageContext.request.contextPath}/static/img/icon1.png" >
            </div>
            <p class="right_txt1">人工智能</p>
            <p class="right_txt2">小白往这看</p>
            <a href="#" class="btn btn-primary" target="_blank" style="font-size: 18px;">传送门</a>
        </div>
        <div  class="right_con1 fl">
            <div class="right_img">
                <img src="${pageContext.request.contextPath}/static/img/study_database.png" >
            </div>
            <p class="right_txt1">大数据</p>
            <p class="right_txt2">小白往这看</p>
            <a href="#" class="btn btn-primary" target="_blank" style="font-size: 18px;">传送门</a>
        </div>
    </div>
</div>



<%@include file="buttom.jsp"%>

</body>
<script src="${pageContext.request.contextPath}/static/js/menu.js"></script>
</html>