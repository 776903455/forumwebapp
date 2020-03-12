<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/12
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员界面</title>
</head>
<body>
<iframe src="${pageContext.request.contextPath}/admin/top.jsp" width="100%" height="150px" frameborder="1" align="middle" name="top"></iframe>
<iframe src="${pageContext.request.contextPath}/admin/left.jsp" width="15%" height="500px" frameborder="1" align="middle" name="left"></iframe>
<iframe  src="${pageContext.request.contextPath}/admin/right.jsp" width="84%" height="500px" frameborder="1" align="middle" name="right"></iframe>
</body>
</html>
