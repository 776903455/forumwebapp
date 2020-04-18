<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/layer/layer.js" type="text/javascript"></script>

    <title>帖子分类</title>
</head>
<body>
<h1 style="margin-left: 30%">帖子分类列表</h1>

<div class="container">
    <a class="btn btn-success" style="margin-left: 94%" href="${pageContext.request.contextPath}/admin/add/articleadd.jsp">添加</a>
    <table class="table table-bordered" style="text-align: center">
        <tr class="active">
            <td>序号</td>
            <td>帖子名称</td>
            <td>查看数</td>
            <td>消耗书币</td>
            <td>主题id</td>
            <td>发帖人id</td>
            <td>发帖日期</td>
            <td>操作</td>
        </tr>
        <c:forEach var="articlepage" items="${articlePage.list}">
        <tr>
            <td>${articlepage.aid}</td>
            <td>${articlepage.aname}</td>
            <td>${articlepage.looknum}</td>
            <td>${articlepage.amoney}</td>
            <td>${articlepage.csid}</td>
            <td>${articlepage.uid==null?1:articlepage.uid}</td>
            <td>
                <fmt:formatDate value="${articlepage.adate}"  pattern="yyyy年MM月dd日 HH时mm分ss秒"/>

            </td>
            <td class="btn btn-danger" onclick="deleteart(${articlepage.aid})">
                <span style="color: white" >删除</span>
            </td>
            <td class="btn btn-primary"><a style="color: white" href="${pageContext.request.contextPath}/toupdateArticle.do?aid=${articlepage.aid}">修改</a></td>
        </tr>
        </c:forEach>
    </table>

    <!--分页-->
    <div class="fenye" style="margin-top: 20px;">

        <div class="page_fenye">
            <nav style="width: 650px; padding-left: 20px;">
                <ul class="pagination">
                    <li>
                        <a href="${pageContext.request.contextPath}/adminFindAllArticle.do?pn=1" aria-label="Next">
                            <span aria-hidden="true">首页</span>
                        </a>
                    </li>
                    <c:if test="${articlePage.hasPreviousPage}">
                        <li>
                            <a href="${pageContext.request.contextPath}/adminFindAllArticle.do?pn=${articlePage.pageNum-1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>


                    <c:forEach items="${articlePage.navigatepageNums}" var="navNums">
                        <c:if test="${navNums==articlePage.pageNum}">
                            <li class="active"><a href="#">${navNums}</a></li>
                        </c:if>
                        <c:if test="${navNums!=articlePage.pageNum}">
                            <li ><a href="${pageContext.request.contextPath}/adminFindAllArticle.do?pn=${navNums}">${navNums}</a></li>
                        </c:if>
                    </c:forEach>

                    <c:if test="${articlePage.hasNextPage}">
                        <li>
                            <a href="${pageContext.request.contextPath}/adminFindAllArticle.do?pn=${articlePage.pageNum+1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <li>
                        <a href="${pageContext.request.contextPath}/adminFindAllArticle.do?pn=${articlePage.pages}" aria-label="Next">
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
    function deleteart(aid) {

        layer.confirm('是否删除此数据？', {
            btn: ['确定','取消'] //按钮
        }, function(){
            location.href="${pageContext.request.contextPath}/deletearticle.do?aid="+aid;
        }, function(){

        });
    }
</script>
</html>
