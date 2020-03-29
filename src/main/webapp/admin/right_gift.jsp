<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js" type="text/javascript"></script>
    <title>礼品分类</title>
</head>
<body>
<h1 style="margin-left: 30%">礼品分类列表</h1>

<div class="container">
    <a class="btn btn-success" style="margin-left: 94%" href="${pageContext.request.contextPath}/admin/add/giftadd.jsp?pid">添加</a>
    <table class="table table-bordered" style="text-align: center">
        <tr class="active">
            <td>序号</td>
            <td>商品图片</td>
            <td>礼品名称</td>
            <td>市场价格</td>
            <td>兑换书币</td>
            <td>是否热门</td>
            <td>操作</td>
        </tr>

        <c:forEach var="gift" items="${giftPage.list}">
        <tr>
            <td>${gift.gid}</td>
            <td><img style="width: 50px;height: 40px;" src="${pageContext.request.contextPath}/${gift.gimage}"></td>
            <td>${gift.gname}</td>
            <td>${gift.marketPrice}</td>
            <td>${gift.gmoney}</td>
            <td>${gift.isHot==1?'是':'否'}</td>
            <td class="btn btn-danger"><a style="color: white" href="${pageContext.request.contextPath}/deleteGift.do?gid=${gift.gid}">删除</a></td>
            <td class="btn btn-primary"><a style="color: white" href="${pageContext.request.contextPath}/toUpdateGift.do?gid=${gift.gid}">修改</a></td>
        </tr>
        </c:forEach>
    </table>
    <!--分页-->
    <div class="fenye" style="margin-top: 20px;">

        <div class="page_fenye">
            <nav style="width: 650px; padding-left: 20px;">
                <ul class="pagination">
                    <li>
                        <a href="${pageContext.request.contextPath}/adminFindAllGift.do?pn=1" aria-label="Next">
                            <span aria-hidden="true">首页</span>
                        </a>
                    </li>
                    <c:if test="${giftPage.hasPreviousPage}">
                        <li>
                            <a href="${pageContext.request.contextPath}/adminFindAllGift.do?pn=${giftPage.pageNum-1}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>


                    <c:forEach items="${giftPage.navigatepageNums}" var="navNums">
                        <c:if test="${navNums==giftPage.pageNum}">
                            <li class="active"><a href="#">${navNums}</a></li>
                        </c:if>
                        <c:if test="${navNums!=giftPage.pageNum}">
                            <li ><a href="${pageContext.request.contextPath}/adminFindAllGift.do?pn=${navNums}">${navNums}</a></li>
                        </c:if>
                    </c:forEach>

                    <c:if test="${giftPage.hasNextPage}">
                        <li>
                            <a href="${pageContext.request.contextPath}/adminFindAllGift.do?pn=${giftPage.pageNum+1}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <li>
                        <a href="${pageContext.request.contextPath}/adminFindAllGift.do?pn=${giftPage.pages}" aria-label="Next">
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
