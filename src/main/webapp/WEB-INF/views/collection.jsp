<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/static/css/menu.css" rel="stylesheet">
    <title>IT在线学习平台</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .content_info{
            width: 1050px;
            height:600px;
            /* background: pink;*/
            margin-left:150px;
            border: 1px grey solid;
        }

        .info_left{
            width: 150px;
            height: 600px;
            background: rgba(0,0,0,0.1);
            float: left;
        }
        .info_left ul li{
            width: 150px;
            height: 50px;
            margin-top: 2px;
            list-style: none;
            font-size: 18px;
            line-height: 50px;
            color: black;
            padding-left: 50px;

        }
        .info_left ul li:hover{
            cursor: pointer;
            background: rgba(0,0,0,0.1);
        }

        .info_right{
            width: 898px;
            height: 600px;
            /*  background: pink;*/
            float: left;
        }

        .right_top{
            width: 900px;
            height: 50px;
            border: 1px grey solid;
            color: deepskyblue;
            padding-left: 30px;
            padding-top: 8px;
            font-size: 18px;
        }

        .info_right1  .buttom_left :hover{
            cursor: pointer;
        }


    </style>
</head>
<body>
        <%@include file="menu.jsp"%>



<!--过度图-->
<div style="width: 1349px;height: 200px;background:rgba(25,191,255,0.8)" >
    <img src="${pageContext.request.contextPath}/static/img/personinfoback.jpg" style="width: 1000px;padding-left: 20%">
</div>

<!--界面设置-->
<div class="content_info" style="margin-top: 3px">
    <div class="info_left">
        <ul>
            <li id="myshouye" style="background: #2aabd2"><span >首页</span></li>
            <li id="myxx"><span>我的收藏</span></li>
        </ul>
    </div>

    <div class="info_right">
        <div class="right_top">我的收藏：</div>
        <div class="form-group" class="right_buttom;" >
            <table class="table table-bordered">
                <c:forEach var="collart" items="${collpage.list}">
                    <tr>
                        <td><a style="font-size: 20px" href="${pageContext.request.contextPath}/selectArtByAid.do?aid=${collart.aid}">${collart.aname}</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>



            <!--分页-->
            <div class="fenye">
                <!--分页-->
                <div class="page_fenye">
                    <nav style="width: 650px; padding-left: 20px;">
                        <ul class="pagination">
                            <li>
                                <a href="${pageContext.request.contextPath}/myCollections.do?uid=${sessionScope.user.uid}&pn=1" aria-label="Next">
                                    <span aria-hidden="true">首页</span>
                                </a>
                            </li>
                            <c:if test="${collpage.hasPreviousPage}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/myCollections.do?uid=${sessionScope.user.uid}&pn=${collpage.pageNum-1}" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                            </c:if>


                            <c:forEach items="${collpage.navigatepageNums}" var="navNums">
                                <c:if test="${navNums==collpage.pageNum}">
                                    <li class="active"><a href="#">${navNums}</a></li>
                                </c:if>
                                <c:if test="${navNums!=collpage.pageNum}">
                                    <li ><a href="${pageContext.request.contextPath}/myCollections.do?uid=${sessionScope.user.uid}&pn=${navNums}">${navNums}</a></li>
                                </c:if>
                            </c:forEach>

                            <c:if test="${collpage.hasNextPage}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/myCollections.do?uid=${sessionScope.user.uid}&pn=${collpage.pageNum+1}" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </c:if>


                            <li>
                                <a href="${pageContext.request.contextPath}/myCollections.do?uid=${sessionScope.user.uid}&pn=${collpage.pages}" aria-label="Next">
                                    <span aria-hidden="true">尾页</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>

        </div>

    </div>

</div>
</body>
<script src="${pageContext.request.contextPath}/static/js/menu.js"></script>
<script>


</script>
</html>