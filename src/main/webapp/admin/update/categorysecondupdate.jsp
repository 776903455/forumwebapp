<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>二级目录修改</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js" type="text/javascript"></script>
    <!--引入表单校验插件-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/messages_zh.js" ></script>
</head>

<body>
<div class="container">
    <form id="categorysecondform" action="${pageContext.request.contextPath}/updateCategorySecond.do" method="post" enctype="multipart/form-data">
    <table style="width: 300px;margin-top: 150px;margin-left: 400px" class="table table-bordered">
        <tr>
            <td colspan="2">修改二级目录</td>
        </tr>
        <input type="hidden" name="csid" value="${admincategorysecond.csid}">

        <tr>
            <td>csname</td>
            <td><input type="text" name="csname" value="${admincategorysecond.csname}"></td>
        </tr>

        <tr>
            <td>所属一级目录</td>
            <td>
                <select name="cid">
                    <option value="-1">${admincategorysecond.cid}</option>
                    <option value="1">免费资源</option>
                    <option value="2">学习路线</option>
                    <option value="3">技术交流</option>
                    <option value="4">礼品兑换</option>
                    <option value="5">最新活动</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>修改图片</td>
            <td>
                <img style="width: 46px;height: 60px" src="${pageContext.request.contextPath}/${admincategorysecond.csimage}">
                <input type="file" name="updateimagefile" />
            </td>
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
                $("#categorysecondform").validate({
                    rules:{
                        cid:{required:true},
                        csname:{required:true},

                    },
                    messages:{
                        cid:{required:"不能为空"},
                        csname:{required:"不能为空"},

                    }
                })
        </script>
</html>