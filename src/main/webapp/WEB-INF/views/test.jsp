
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Title</title>
</head>
<body>
    <span>来了没</span>
    <table width="300px" >
        <d:forEach items="${replaylist.list}" var="replist">
        <tr>
            <td>${replist.repname}</td>
            <td>${replist.reptxt}</td>
        </tr>
        </d:forEach>
    </table>
</body>
</html>
