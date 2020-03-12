<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/12
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js" type="text/javascript"></script>
    <title>一级目录管理</title>
</head>
<body>
<h1 style="margin-left: 30%">一级目录分类列表</h1>

<div class="container">
    <a class="btn btn-success" style="margin-left: 94%" href="/add.jsp">添加</a>
    <table class="table table-bordered" style="text-align: center">
        <tr class="active">
            <td>序号</td>
            <td>一级目录名称</td>
            <td>操作</td>
        </tr>
        <tr>
            <td>1</td>
            <td>爱上大萨达</td>
            <td class="btn btn-danger"><a style="color: white" href="#">删除</a></td>
            <td class="btn btn-primary"><a style="color: white" href="#">修改</a></td>
        </tr>
    </table>
</div>
</body>