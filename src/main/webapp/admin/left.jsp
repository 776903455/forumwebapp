<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/3/12
  Time: 18:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="${pageContext.request.contextPath}/static/css/dtree.css" rel="stylesheet" type="text/css">
<script src="${pageContext.request.contextPath}/admin/dtree.js" type="text/javascript"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="dtree" >

    <script type="text/javascript">
        d=new dTree("d");
        d.add("01","-1","在线学习平台后台管理");
        d.add("0101","01","一级目录分类");
        d.add("010101","0101","一级目录管理","${pageContext.request.contextPath}/adminFindAllCategory.do","","right");
        d.add("0102","01","二级目录分类");
        d.add("010201","0102","二级目录管理","${pageContext.request.contextPath}/adminFindAllCategorySecond.do","","right");
        d.add("0103","01","用户管理");
        d.add("010301","0103","用户管理","${pageContext.request.contextPath}/adminFindAllUser.do","","right");
        d.add("0104","01","帖子管理");
        d.add("010401","0104","帖子管理","${pageContext.request.contextPath}/adminFindAllArticle.do","","right");
        d.add("0105","01","礼品管理");
        d.add("010501","0105","礼品管理","${pageContext.request.contextPath}/adminFindAllGift.do","","right");

        document.write(d)
    </script>
</div>
</body>
</html>
