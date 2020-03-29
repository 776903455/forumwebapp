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
    <form id="categoryform" action="${pageContext.request.contextPath}/updateCategory.do">
    <table style="width: 300px;margin-top: 150px;margin-left: 400px" class="table table-bordered">
        <input type="hidden" name="cid" value="${admincategory.cid}">
        <tr>
            <td colspan="2">修改一级目录</td>
        </tr>
        <tr>
            <td>cname</td>
            <td><input type="text" name="cname" value="${admincategory.cname}"></td>
        </tr>
        <tr>
            <td colspan="2"><input style="margin-left: 200px" type="submit" class="btn btn-success" value="修改"></td>
        </tr>
    </table>
    </form>
</div>
</body>
        <script>
            $(function () {
                $("#categoryform").validate({
                    rules:{
                        cname:{required:true}
                    },
                    messages:{
                        cname:{required:"不能为空"}
                    }
                })
            })
        </script>
</html>