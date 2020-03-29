
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js" type="text/javascript"></script>
    <title>管理员登陆</title>
</head>
<body>


        <div class="container">
            <form action="${pageContext.request.contextPath}/findAdminByname.do">
            <table style="width: 500px;margin-top: 100px" class="table table-bordered">
                <tr>
                    <td style="color: red" colspan="2">管理员登陆界面
                        <span style="color: red">${eroor}</span>
                    </td>
                </tr>
                <tr>
                    <td>用户名</td>
                    <td><input type="text" name="adminname"></td>
                </tr>
                <tr>
                    <td>密码</td>
                    <td><input type="password" name="adminpassword"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input style="margin-left: 300px" type="submit" class="btn btn-success" value="登录">
                    </td>
                </tr>
            </table>
            </form>
        </div>
</body>
</html>
