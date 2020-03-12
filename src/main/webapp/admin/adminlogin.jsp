<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/12
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员登陆</title>
</head>
<body>
        <span style="color: red">${eroor}</span>
        <form action="${pageContext.request.contextPath}/findAdminByname.do">
            <input type="text" name="adminname"><br>
            <input type="password" name="adminpassword"><br>
            <input type="submit" value="登录">
        </form>
</body>
</html>
