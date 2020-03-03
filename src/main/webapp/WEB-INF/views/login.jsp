<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/26
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
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
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
    <title>Title</title>
    <style>

        .main{
            height: 500px;
            width: 100%;
            background: rgba(0,0,0,0.2);
        }
        .login_imgs .img2{
            width: 200px;
            height: 500px;

        }
        .login_imgs1 .img3{
            width: 200px;
            height: 500px;
            position: absolute;
            top:75px ;
            right: 0px;

        }

        .login_imgs .img1{
            height: 500px;
            width: 700px;
            margin-left: 120px;
        }

        .login_table{
            position: absolute;
            top: 200px;
            right: 480px;
        }

        .dl_button{
            position: relative;

        }
        #dl_button1{
            position: relative;
            top: 3px;
            left: 110px;
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
    <div class="login_imgs">
        <img class="img2" src="${pageContext.request.contextPath}/static/img/login_img2.jpg">
        <img class="img1" src="${pageContext.request.contextPath}/static/img/login_img.jpg">

    </div>
    <div class="login_table">
        <form action="${pageContext.request.contextPath}/login.do" method="get">
            <table border="1px"   width="400px" height="200px"  align="center">
                <tr height="40px">
                    <td colspan="2">
                        <font size="4px" color="red">会员登录 &nbsp;&nbsp;USER LOGIN</font><br>
                        <span style="color: red">${error}</span>
                    </td>

                </tr>
                <tr height="40px">
                    <td >
                        <font size="4px" ><i>用户名</i></font>
                    </td>
                    <td> <input   placeholder="用户名" type="text" name="username"></td>
                </tr>

                <tr height="40px">
                    <td>
                        <font size="4px" ><i>密码</i></font>
                    </td>
                    <td> <input  placeholder="密码" type="password" name="password"></td>
                </tr>
                <tr height="40px">
                    <td colspan="2" align="center" class="dl_button">
                        <input  style="width: 100px;" class="btn btn-success" id="dl_button1" type="submit"  value=" 登录"  >
                    </td>

                </tr>
            </table>
        </form>
    </div>
    <div class="login_imgs1">
        <img class="img3" src="${pageContext.request.contextPath}/static/img/login_img2.jpg">
    </div>
</div>

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

</body>
</html>