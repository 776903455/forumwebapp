<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/static/ueditor/ueditor.config.js"></script>
<script src="${pageContext.request.contextPath}/static/ueditor/ueditor.all.js"></script>
<script src="${pageContext.request.contextPath}/static/layer/layer.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
    <textarea  style="width: 750px;height: 250px"  id="container" name="texteare_text">

    </textarea>
    <input  style="margin-left: 85%;margin-top: 20px" class="btn btn-info" id="reply_btn" type="button" value="回复">
</form>
</body>

<script >
    var ue = UE.getEditor("container");
    /*判断用户是否登录来设置点击回帖实践*/
    var replybtn= document.getElementById("reply_btn");
    var textearetext = document.querySelector("#container");
    replybtn.onclick=function () {
        console.log(textearetext.value);
         parent.layer.text=textearetext.value;
        let index= parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    };
</script>
</html>
