<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/14
  Time: 17:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/layer/layer.js" type="text/javascript"></script>

    <title>二级目录管理</title>
</head>
<body>
<h1 style="margin-left: 30%">二级目录分类列表</h1>

<div class="container">
    <a class="btn btn-success" style="margin-left: 94%" href="${pageContext.request.contextPath}/admin/add/categoryseconadd.jsp">添加</a>
    <table class="table table-bordered" style="text-align: center">
        <tr class="active">
            <td>序号</td>
            <td>二级目录名称</td>
            <td>操作</td>
        </tr>
        <c:forEach var="acspage" items="${acsPage.list}">
        <tr>
            <td>${acspage.csid}</td>
            <td>${acspage.csname}</td>
            <td class="btn btn-danger" id="deletecs" onclick="deletecs(${acspage.csid})">
                <span style="color: white">删除</span>
            </td>
            <td class="btn btn-primary"><a style="color: white" href="${pageContext.request.contextPath}/toUpdateCategorySecondJM.do?csid=${acspage.csid}">修改</a></td>
        </tr>
        </c:forEach>
    </table>
    <!--分页-->
    <div class="fenye" style="margin-top: 20px;">

        <div class="page_fenye">
            <nav style="width: 650px; padding-left: 20px;">
                <ul class="pagination">
                    <li>
                        <a href="${pageContext.request.contextPath}/adminFindAllCategorySecond.do?pn=1" aria-label="Next">
                            <span aria-hidden="true">首页</span>
                        </a>
                    </li>
                    <c:if test="${acsPage.hasPreviousPage}">
                        <li>
                            <a href="${pageContext.request.contextPath}/adminFindAllCategorySecond.do?pn=${acsPage.pageNum-1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>


                    <c:forEach items="${acsPage.navigatepageNums}" var="navNums">
                        <c:if test="${navNums==acsPage.pageNum}">
                            <li class="active"><a href="#">${navNums}</a></li>
                        </c:if>
                        <c:if test="${navNums!=acsPage.pageNum}">
                            <li ><a href="${pageContext.request.contextPath}/adminFindAllCategorySecond.do?pn=${navNums}">${navNums}</a></li>
                        </c:if>
                    </c:forEach>

                    <c:if test="${acsPage.hasNextPage}">
                        <li>
                            <a href="${pageContext.request.contextPath}/adminFindAllCategorySecond.do?pn=${acsPage.pageNum+1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <li>
                        <a href="${pageContext.request.contextPath}/adminFindAllCategorySecond.do?pn=${acsPage.pages}" aria-label="Next">
                            <span aria-hidden="true">尾页</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</div>


</body>
    <script>
        function deletecs(csid) {

            layer.confirm('是否删除此数据？', {
                btn: ['确定','取消'] //按钮
            }, function(){
                location.href="${pageContext.request.contextPath}/deleteCategorySecond.do?csid="+csid;
            }, function(){

            });
        }
    </script>
</html>
