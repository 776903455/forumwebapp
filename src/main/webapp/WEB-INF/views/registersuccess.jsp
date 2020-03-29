<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
    <title>Title</title>


    <style>
        .main{
            width: 1000px;
            height: 300px;
            margin-top: 100px;
            margin-left: 300px;
        }
        .main img{
        }
        .main p {
            margin-left: 150px;
            position: relative;
        }
        .main a{
            text-decoration: none;
            color: #1b6d85;
        }
        .main p span{
            position: absolute;
            left: 380px;

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

<div class="main">
    <img src="${pageContext.request.contextPath}/static/img/register_success_img.jpg">
    <p><a href="${pageContext.request.contextPath}/toLogin.do">将在5秒后自动跳转至登录界面,如果没反应可以选择手动跳转</a>
        <span class="miao"><strong>5</strong></span>
    </p>

</div>

<%@include file="buttom.jsp"%>

</body>
            <script>
                var num=5;
                var miao = document.querySelector(".miao");
                 setInterval(function () {
                    num--;
                    miao.innerText=num;
                    if(num<=0){
                        clearInterval(this);
                        window.location.href="${pageContext.request.contextPath}/reglog.do"}
                },1000);



            </script>
</html>