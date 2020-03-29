<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js" type="text/javascript"></script>
    <!--引入表单校验插件-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/messages_zh.js" ></script>
</head>
<body>
<div class="container">
    <form id="checkform" action="${pageContext.request.contextPath}/adduser.do" method="post">
    <table style="width: 300px;margin-top: 100px;margin-left: 200px" class="table table-bordered">
        <tr>
            <td style="font-size: 20px" colspan="2">添加用户</td>
        </tr>

        <tr height="40px">
            <td >
                <font size="4px" ><i>用户名</i></font>
            </td>
            <td> <input class="error"  id="userid" placeholder="用户名" type="text" name="username">
                <span style="color: red" class="checkuserspan"></span>
            </td>
        </tr>
        <tr >
            <td>
                <font size="4px" ><i>密码</i></font>
            </td>
            <td> <input  placeholder="密码" type="password" name="password"></td>
        </tr>

        <tr >
            <td>

                <font size="4px" ><i>Email</i></font>
            </td>
            <td>
                <input placeholder="Email" type="text" name="email" />
            </td>
        </tr>
        <tr >
            <td>
                <font size="4px"  ><i>手机号码</i></font>
            </td>
            <td>
                <input placeholder="手机号码" type="text" name="phone">
            </td>
        </tr>
        <tr>
            <td>
                <font size="4px" ><i>性别</i></font>
            </td>
            <td>
                <input type="radio" name="sex" value="男" checked="checked">男
                <input type="radio" name="sex" value="女">女
            </td>
        </tr>

        <tr>
            <td colspan="2"><input style="margin-left: 200px" type="submit" class="btn btn-success" value="添加"></td>
        </tr>
    </table>
    </form>
</div>
</body>

    <script>
        /*用ajax校验用户存不存在*/
        var userExsit = document.querySelector(".error");
        var checkuserspan = document.querySelector(".checkuserspan");
        $(function () {

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

                    email:"邮箱格式不正确",
                    phone:{
                        required:"这是必填字段",
                        checkPhone:"电话格式错误"
                    }
                }
            })
        })
    </script>
</html>