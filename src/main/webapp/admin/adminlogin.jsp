<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>后台登录</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/style.css" />
<style>
body{height:100%;background:#16a085;overflow:hidden;}
canvas{z-index:-1;position:absolute;}
</style>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/verificationNumbers.js"></script>
<script src="${pageContext.request.contextPath}/static/js/Particleground.js"></script>
<script>
$(document).ready(function() {
  //粒子背景特效
  $('body').particleground({
    dotColor: '#5cbdaa',
    lineColor: '#5cbdaa'
  });
  //验证码
  createCode();

});
</script>
</head>
<body>
<dl class="admin_login">
 <dt>
  <strong>后台管理系统</strong>
  <em>Management System</em>
 </dt>
  <span style="color: red">${eroor}</span>
 <form action="${pageContext.request.contextPath}/findAdminByname.do">
 <dd class="user_icon">
  <input type="text" placeholder="账号" name="adminname" class="login_txtbx"/>
 </dd>
 <dd class="pwd_icon">
  <input type="password" placeholder="密码" name="adminpassword" class="login_txtbx"/>
 </dd>
 <dd class="val_icon">
  <div class="checkcode">
    <input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
    <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
  </div>
  <input type="button" value="验证码核验" class="ver_btn" onClick="validate();">
 </dd>
 <dd>
  <input type="submit" value="立即登录" />
 </dd>
 </form>
 <dd>
  <p>© 2019-2020 lyh毕设 </p>
  <p>电子科技大学中山学院嵌入B班</p>
 </dd>
</dl>
</body>
</html>
