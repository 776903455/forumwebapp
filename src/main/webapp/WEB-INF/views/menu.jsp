<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="head_index">

    <div class="head1">
        <div class="container">
            <div class="row">
                <div class="col-md-2"> <img src="${pageContext.request.contextPath}/static/img/title_left1.jpg" class="head1_left_img"></div>
                <div class="col-md-1"><a href="${pageContext.request.contextPath}/toIndex.do">首页</a></div>
                <div class="col-md-1"><a href="${pageContext.request.contextPath}/toFreeSource.do?cid=1">免费资源</a></div>
                <div class="col-md-1"><a href="${pageContext.request.contextPath}/toStudyPath.do" >学习路线</a></div>
                <div class="col-md-1"><a href="${pageContext.request.contextPath}/toSkillExchange.do?cid=3">技术交流</a></div>
                <div class="col-md-1"><a href="${pageContext.request.contextPath}/toProducts.do">礼品兑换</a></div>
                <div class="col-md-1"><a href="#">最新活动</a></div>
                <div class="col-md-2">
                    <input  id="search_info" value=""/>
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/static/img/search_img.jpg" class="search_img" />
                    </a>
                </div>

                <div class="col-md-2" >
                    <c:if test="${sessionScope.user==null}">
                        <a href="${pageContext.request.contextPath}/toLogin.do" style="font-size: 15px; margin-top: 70px;margin-left: 120px;">登录 </a>
                        <a href="${pageContext.request.contextPath}/toRegister.do" style="font-size: 15px; margin-top: 70px;margin-left: 10px;">注册</a>
                    </c:if>

                    <c:if test="${sessionScope.user!=null}">
                        <div class="touxiang_event">
                            <p  style="width: 50px;height: 50px;display: inline">
                                <a href="${pageContext.request.contextPath}/toPersonInfo.do?username=${sessionScope.user.username}"><img  class="touxiang_img"  style="width: 50px;height: 50px;border-radius: 50%" src="${sessionScope.user.uimage}" ></a>
                            </p>
                            <span class="username_hide">${sessionScope.user.username}</span>

                            <div class="folat_info">
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/toPersonInfo.do?username=${sessionScope.user.username}" >个人信息</a></li>
                                    <li><span class="faitie_span" style="cursor: pointer">发帖</span></li>
                                    <li><a href="#">帖子</a></li>
                                        <%--    <li><a class="click_hide_gold" href="${pageContext.request.contextPath}/getScore.do?score=${sessionScope.user.score}&username=${sessionScope.user.username}">签到</a></li>--%>
                                    <li><span class="click_hide_gold">积分：${sessionScope.user.score}</span></li>
                                    <li><a  href="${pageContext.request.contextPath}/exit.do" >退出</a></li>
                                </ul>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>