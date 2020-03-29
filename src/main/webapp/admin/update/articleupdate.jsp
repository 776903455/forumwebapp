<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js" type="text/javascript"></script>
    <!--引入表单校验插件-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/messages_zh.js" ></script>
</head>
<body>
<div class="container">
    <form action="${pageContext.request.contextPath}/updateArticle.do" method="post" >
    <table style="width: 350px;margin-top: 100px;margin-left: 200px" class="table table-bordered">
        <tr>
            <td style="font-size: 20px" colspan="2">修改帖子</td>
        </tr>
        <input type="hidden"  name="aid" value="${article.aid}">
        <tr height="40px">
            <td >
                <font size="4px" ><i>帖子名</i></font>
            </td>
            <td> <input  type="text" name="aname" value="${article.aname}">
            </td>
        </tr>
        <tr >
            <td>
                <font size="4px" ><i>查看数</i></font>
            </td>
            <td> <input   type="text" name="looknum" value="${article.looknum}"></td>
        </tr>

        <tr >
            <td>

                <font size="4px" ><i>消耗书币</i></font>
            </td>
            <td>
                <input  type="text" name="amoney" value="${article.amoney}"/>
            </td>
        </tr>
   <%--     <tr >
            <td>
                <font size="4px" ><i>主题id</i></font>
            </td>
            <td>
                <select name="cid" id="select_id" onchange="categorychanges()">
                    <option value="0">所属一级分类</option>
                    <option value="1">免费资源</option>
                    <option value="2">学习路线</option>
                    <option value="3">技术交流</option>
                    <option value="4">礼品兑换</option>
                    <option value="5">最新活动</option>
                </select>
                <select name="csid">
                    <option value="1">所属二级分类</option>
                    <option value="2"></option>
                </select>
            </td>
        </tr>--%>
        <tr>
            <td colspan="2"><input style="margin-left: 200px" type="submit" class="btn btn-success" value="修改"></td>
        </tr>
    </table>

    </form>
</div>
</body>
</html>