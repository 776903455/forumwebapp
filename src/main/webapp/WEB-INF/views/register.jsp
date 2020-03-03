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
    <!--引入表单校验插件-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/messages_zh.js" ></script>

    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
    <title></title>

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
            top: 100px;
            right: 470px;
        }
        .dl_button{
            position: relative;

        }
        #dl_button1{
            position: relative;
            top: 1px;
            left: 120px;
        }
        input.error { border: 1px solid red; }
        label.error {
            font-weight: bold;
            color:red;
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
        <form action="${pageContext.request.contextPath}/register.do" method="post" id="checkform">
            <table border="1px"   width="400px" height="200px"  align="center">
                <tr height="40px">
                    <td colspan="2">
                        <font size="4px" color="red">会员登录 &nbsp;&nbsp;USER LOGIN</font>
                    </td>

                </tr>
                <tr height="40px">
                    <td >
                        <font size="4px" ><i>用户名</i></font>
                    </td>
                    <td> <input class="error"  id="userid" placeholder="用户名" type="text" name="username">
                        <span style="color: red" class="checkuserspan"></span>
                    </td>

                </tr>

                <tr height="40px">
                    <td>
                        <font size="4px" ><i>密码</i></font>
                    </td>
                    <td> <input  placeholder="密码" type="password" name="password"></td>
                </tr>
                <tr height="40px">
                    <td>
                        <font size="4px" ><i>确认密码</i></font>
                    </td>
                    <td>
                        <input placeholder="确认密码" type="password" name="repassword">
                    </td>
                </tr>

                <tr height="40px">
                    <td>

                        <font size="4px" ><i>Email</i></font>
                    </td>
                    <td>
                        <input placeholder="Email" type="text" name="email" />
                    </td>
                </tr>


                <tr height="40px">
                    <td>
                        <font size="4px"  ><i>手机号码</i></font>
                    </td>
                    <td>
                        <input placeholder="手机号码" type="text" name="phone">
                    </td>
                </tr>



                <tr height="40px">
                    <td>
                        <font size="4px" ><i>验证码</i></font>
                    </td>
                    <td>
                        <p style="color: red">${codeEroor}</p>
                        <input  placeholder="验证码" type="text"  name="yzm"/>
                        <img   src="${pageContext.request.contextPath }/cheackImg.do"
                             width="100" height="34" id="verifyCodeImage" onclick="changeImage();">
                    </td>
                </tr>

                <tr height="40px">
                    <td>
                        <font size="4px" ><i>性别</i></font>
                    </td>
                    <td>
                        <input type="radio" name="sex" value="男" checked="checked">男
                        <input type="radio" name="sex" value="女">女
                    </td>
                </tr>

                <tr height="40px">
                    <td colspan="2" align="center" class="dl_button">
                        <input  style="width: 100px;" class="btn btn-success" id="dl_button1" type="submit"  value=" 注册"  >
                    </td>

                </tr>

            </table>
        </form>
    </div>
    <div class="login_imgs1">
        <img class="img3" src="${pageContext.request.contextPath}/static/img/login_img2.jpg">
    </div>
</div>
<%@include file="buttom.jsp"%>

</body>
<script>

   /* $.validator.addMethod("isMobile", function(value, element) {
        var length = value.length;
        var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;
        return this.optional(element) || (length == 11 && mobile.test(value));
    }, "请正确填写您的手机号码");*/


    /*用ajax校验用户存不存在*/
    var userExsit = document.querySelector(".error");

    var checkuserspan = document.querySelector(".checkuserspan");
   userExsit.onblur=function () {
       $.ajax({
           type :"post",
           url  :"${pageContext.request.contextPath}/checkUser.do",
           data: "username="+userExsit.value,
           success : function(result) {
               checkuserspan.innerHTML=result;
           }
       } );
   };

/*点击更换验证码*/
   function changeImage() {
       $('#verifyCodeImage').attr('src', '${pageContext.request.contextPath }/cheackImg.do?'+new Date().getTime());
   }


    /*表单校验*/
    /*添加校验手机号码的方法*/
    $.validator.addMethod("checkPhone",function (value,ele) {
        /*编写校验规则*/
        console.log(value);
        var reg=new RegExp("^1[3568]{1}[0-9]{9}$");
        console.log(reg.test(value));
        if(reg.test(value)){
            return true;
        }else {
            return false;
        }
    })
    
    
    $("#checkform").validate({
        rules:{
            username:{
                required:true,
                rangelength:[6,15]
            },
            password:{
                required:true,
                rangelength:[6,15]
            },
            repassword:{
              equalTo:"[name='password']"
            },
            email:{
                email:true
            },
            phone:{
                required:true,
                checkPhone:[]
            }

        },
        messages:{
            username:{
                required:"这是必填字段",
                rangelength:"长度在6到12之间"
            },
            password:{
                required:"这是必填字段",
                rangelength:"长度在6到12之间"
            },
            repassword:"密码不一致",
            email:"邮箱格式不正确",
            phone:{
                required:"这是必填字段",
                checkPhone:"电话格式错误"
            }
        }
    })


</script>

</html>

