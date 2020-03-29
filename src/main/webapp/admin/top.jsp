<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/12
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<img style="width: 1324px;height: 138px;position: absolute;z-index: 0" src="${pageContext.request.contextPath}/admin/img/dream.jpg">
<p >超级管理员:${sessionScope.admin1.adminname}</p>
</body>
</html>
