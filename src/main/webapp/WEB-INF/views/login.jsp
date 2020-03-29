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
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
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
    <div class="container">
    <div class="login_table">
        <form action="${pageContext.request.contextPath}/login.do" method="get">
            <table   class="table table-bordered" style="width: 500px"  align="center">
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

                <tr height="40px">
                    <td  colspan="2">
                        <p style="color: grey;text-align: center">第三方登录</p>
                        <img id="qq_img" style="width: 70px;height: 50px;margin-left: 200px;cursor:pointer;float: left;border-radius: 100%"
                             src="${pageContext.request.contextPath}/static/img/qq.jpg" alt="图片加载">
                        <img id="weichat_img" style="width: 50px;height: 50px;cursor:pointer;float: left;border-radius: 100%"
                             src="${pageContext.request.contextPath}/static/img/weichat.jpg" alt="图片加载">
                    </td>

                </tr>
            </table>
        </form>
    </div>
    </div>

    <div class="login_imgs1">
        <img class="img3" src="${pageContext.request.contextPath}/static/img/login_img2.jpg">
    </div>

</div>

        <%@include file="buttom.jsp"%>

</body>


        <script>
            $(function () {
                /*给微信一个点击事件，去请求微信平台授权*/
                $("#weichat_img").click(function () {
                    window.location.href="${pageContext.request.contextPath}/wecharLogin.do"
                });

                /*给qq一个点击事件，去请求qq授权界面*/
                $("#qq_img").click(function () {
                    window.location.href="${pageContext.request.contextPath}/qq_ToLogin.do"
                })

            })

        </script>
</html>