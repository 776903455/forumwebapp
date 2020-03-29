
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js" type="text/javascript"></script>
    <title>用户管理</title>
</head>
<body>
<h1 style="margin-left: 30%">用户管理列表</h1>

<div class="container">
    <a class="btn btn-success" style="margin-left: 94%" href="${pageContext.request.contextPath}/admin/add/useradd.jsp">添加</a>
    <table class="table table-bordered" style="text-align: center">
        <tr class="active">
            <td>序号</td>
            <td>头像</td>
            <td>昵称</td>
            <td>账号</td>
            <td>书币</td>
            <td>注册时间</td>
            <td>操作</td>
        </tr>
        <c:forEach items="${userPage.list}" var="userpage">
        <tr>
            <td>${userpage.uid}</td>
            <td><img style="height: 50px;width: 50px;border-radius: 100%" src="${pageContext.request.contextPath}/${userpage.uimage}"></td>
            <td>${userpage.uname}</td>
            <td>${userpage.username}</td>
            <td>${userpage.score}</td>
            <td>${userpage.regtime}</td>
            <td class="btn btn-danger"><a style="color: white" href="${pageContext.request.contextPath}/deleteuser.do?uid=${userpage.uid}">删除</a></td>
            <td class="btn btn-primary"><button disabled="disabled"  style="color: white">修改</button></td>
        </tr>
        </c:forEach>
    </table>

    <!--分页-->
    <div class="fenye" style="margin-top: 20px;">

        <div class="page_fenye">
            <nav style="width: 650px; padding-left: 20px;">
                <ul class="pagination">
                    <li>
                        <a href="${pageContext.request.contextPath}/adminFindAllUser.do?pn=1" aria-label="Next">
                            <span aria-hidden="true">首页</span>
                        </a>
                    </li>
                    <c:if test="${userPage.hasPreviousPage}">
                        <li>
                            <a href="${pageContext.request.contextPath}/adminFindAllUser.do?pn=${userPage.pageNum-1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>


                    <c:forEach items="${userPage.navigatepageNums}" var="navNums">
                        <c:if test="${navNums==userPage.pageNum}">
                            <li class="active"><a href="#">${navNums}</a></li>
                        </c:if>
                        <c:if test="${navNums!=userPage.pageNum}">
                            <li ><a href="${pageContext.request.contextPath}/adminFindAllUser.do?pn=${navNums}">${navNums}</a></li>
                        </c:if>
                    </c:forEach>

                    <c:if test="${userPage.hasNextPage}">
                        <li>
                            <a href="${pageContext.request.contextPath}/adminFindAllUser.do?pn=${userPage.pageNum+1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <li>
                        <a href="${pageContext.request.contextPath}/adminFindAllUser.do?pn=${userPage.pages}" aria-label="Next">
                            <span aria-hidden="true">尾页</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>


</body>

</html>
