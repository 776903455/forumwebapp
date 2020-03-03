<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Bootstrap -->
<link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet">
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/forum_TZJM.css">
<head>
    <title>Title</title>

    <style>
        .head1 .container .row .search_img{
            width: 25px;
            height: 25px;
            position: absolute;
            top: 25px;
            right: 20px;

        }

        .touxiang_event{
            position: relative;

        }

        .folat_info{
            width:100px;
            height:auto;
            background:rgba(255,236,139,0.8);
            opacity:0;
            position:absolute;
            top:55px;
            right:90px;
            z-index:10;
        }
        .folat_info ul{
            margin: 0;
            padding: 0;
            width: 100px;
            height: auto;
        }
        .folat_info ul li{

            width: 100px;
            height: 30px;
            list-style: none;
            margin-top: 5px;
            border-bottom: 1px solid gray;
            font-size: 15px;
            line-height: 20px;
        }
        .folat_info ul li:hover{
            color: white;

        }


    </style>
</head>
<body>


<%--<div class="head_index">

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
                                        &lt;%&ndash;    <li><a class="click_hide_gold" href="${pageContext.request.contextPath}/getScore.do?score=${sessionScope.user.score}&username=${sessionScope.user.username}">签到</a></li>&ndash;%&gt;
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
</div>--%>
    <%@include file="../menu.jsp"%>

<!--center-->

<div class="center_all">
    <c:if test="${cAndCs.categorysecond.csid>=1&&cAndCs.categorysecond.csid<=8}">
    <!--路径导航-->
    <div class="path_navigation">
        <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/toIndex.do">首页</a></li>
            <li><a href="${pageContext.request.contextPath}/toSkillExchange.do?cid=3">${cAndCs.category.cname}</a></li>
            <li><a href="${pageContext.request.contextPath}/selectAllArtByCsid.do?csid=${cAndCs.categorysecond.csid}">${cAndCs.categorysecond.csname}</a></li>
            <li><a href="#">正文</a></li>
        </ol>
    </div>
    </c:if>


    <c:if test="${cAndCs.categorysecond.csid>=9&&cAndCs.categorysecond.csid<=17}">
        <!--路径导航-->
        <div class="path_navigation">
            <ol class="breadcrumb">
                <li><a href=${pageContext.request.contextPath}/toIndex.do">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/toFreeSource.do?cid=1">${cAndCs.category.cname}</a></li>
                <li><a href="${pageContext.request.contextPath}/selectAllArtByCsid.do?csid=${cAndCs.categorysecond.csid}">${cAndCs.categorysecond.csname}</a></li>
                <li><a href="#">正文</a></li>
            </ol>
        </div>
    </c:if>

    <div class="center_content">
        <!--左边内容-->
        <div class="content_left">
            <!--标题-->
            <div class="left_title">
                <div class="title_top">
                    <span>${article.aname}</span>
                    <img src="${pageContext.request.contextPath}/static/img/hot/recommend_1.gif">
                    <img src="${pageContext.request.contextPath}/static/img/hot/hot_2.gif">
                </div>
                <div class="title_buttom">
                    <ul>
                        <li>${artUser.username} 中级黑马 /</li>
                        <li>${artTime}/</li>
                        <li>${article.looknum}人查看/</li>
                        <li>${article.replist.size()}回复/</li>
                        <li> 0 人收藏/</li>
                    </ul>
                </div>
            </div>
            <!--帖子内容-->


            <div class="left_content">
                <div class="textarea_content">

                    <c:forEach items="${arrTxt}" var="arrtxt">
                    <p>${arrtxt}</p>
                    </c:forEach>

                    <img src="${pageContext.request.contextPath}/static/img/lunbotu1.jpg">
                </div>

                <c:if test="${sessionScope.user==null}">
                    <div class="reply_link">您需要登录才可以下载或查看，没有帐号？<a href="${pageContext.request.contextPath}/toRegister.do">立即注册</a></div>
                </c:if>
                <c:if test="${sessionScope.user!=null}">
                    <div class="reply_link" style="position: relative">

                        <p id="reply_link_content" style="position: absolute;width: 680px;height: 40px;background:white ">
                            <c:if test="${article.resourseurl.lastIndexOf('_')!=-1}">
                           <span>${article.resourseurl.substring(0,article.resourseurl.lastIndexOf("_"))}</span><br/>
                           <span> 提取码：${article.resourseurl.substring(article.resourseurl.lastIndexOf("_")+1)}</span>
                            </c:if>

                            <c:if test="${article.resourseurl.lastIndexOf('_')==-1}">
                                <span>${article.resourseurl}</span><br/>
                                <span> 提取码：无</span>
                            </c:if>
                        </p>

                    </div>
                </c:if>


                <div style="width: 800px;height: 100px;border: 1px solid red;text-align: center">看情况添加。。。。</div>
            </div>


            <%--回复模态框--%>
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
                <form>
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">回复</h4>
                        </div>

                        <div class="modal-body">

                                    <p class="reply_texteare_pp" style=" width: 500px;height: 30px;position: relative;top: 45px;left: 0px;">
                                        <img style="position: absolute;width: 30px ;height: 30px; left: 15px;top: 5px;" class="reply_texteare_00"
                                             src="${pageContext.request.contextPath}/static/img/hot/biaoqing/0.gif">
                                    </p>
                                    <textarea class="reply_texteare_text" rows="8" cols="70" id="texteare_text1" name="texteare_text">
                                    </textarea>

                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary" id="user_replay">回帖</button>
                        </div>
                    </div>
                </div>
                </form>
            </div>



            <!--用户回复列表-->

            <div class="buttom_reply_list">
                <ul>
                    <c:if test="${replaylist.list.size()>0}">
                    <c:forEach items="${replaylist.list}" var="replist">
                    <li>
                        <p class="list_p1">
                            <img  src="${pageContext.request.contextPath}/${replist.user.uimage}">
                            <span>${replist.user.username}</span>&nbsp;&nbsp;&nbsp;&nbsp;
                            <span>${replist.repdate}</span>
                        </p>
                        <p class="list_p2">
                            <span style="margin-left: 40px;margin-top: 5px">${replist.reptxt}</span>
                        </p>
                        <p class="list_p3">
                            <span style="position: absolute;left: 30px"><a href="#">回复</a></span>
                            <span style="position: absolute;right: 70px"><a href="#">举报</a></span>
                            <span  class="glyphicon glyphicon-thumbs-up" style="position: absolute;right: 40px"></span>
                            <span  class="glyphicon glyphicon-thumbs-down" style="position: absolute;right: 20px;transform: rotateY(180deg)"></span>
                        </p>
                    </li>
                    </c:forEach>
                    </c:if>

                    <c:if test="${replaylist.list.size()==null}">
                        <li>
                            <div style="width: 800px;height: 100px;border: 1px dashed gray;text-align: center;padding-top:  30px;font-size: 20px" >目前还没有评论哦，亲！</div>
                        </li>

                    </c:if>


                    <li>

                        <nav style="width: 650px; padding-left: 20px;" >
                            <ul class="pagination">
                                <li>
                                    <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=${article.aid}&pn=1"  aria-label="Next">
                                        <span aria-hidden="true">首页</span>
                                    </a>
                                </li>
                                <c:if test="${replaylist.hasPreviousPage}">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=${article.aid}&pn=${replaylist.pageNum-1}" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                </c:if>


                                <c:forEach items="${replaylist.navigatepageNums}" var="navNums">
                                    <c:if test="${navNums==replaylist.pageNum}">
                                        <li class="active"><a href="#">${navNums}</a></li>
                                    </c:if>
                                    <c:if test="${navNums!=replaylist.pageNum}">
                                        <li ><a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=${article.aid}&pn=${navNums}">${navNums}</a></li>
                                    </c:if>
                                </c:forEach>

                                <c:if test="${replaylist.hasNextPage}">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=${article.aid}&pn=${replaylist.pageNum+1}" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </c:if>


                                <li>
                                    <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=${article.aid}&pn=${replaylist.pages}" aria-label="Next">
                                        <span aria-hidden="true">尾页</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </li>
                </ul>

                <!--回复文本框-->
                <div class="reply_texteare">
                    <form>
                        <p class="reply_texteare_p">
                            <img class="reply_texteare_0" src="${pageContext.request.contextPath}/static/img/hot/biaoqing/0.gif">
                            <img class="reply_texteare_1" src="${pageContext.request.contextPath}/static/img/hot/link.gif">
                        </p>
                        <textarea class="reply_texteare_text" rows="8" cols="100" id="texteare_text" name="texteare_text">
                            </textarea>
                        <input class="btn btn-info" id="reply_btn" type="button" value="回复">
                    </form>

                </div>
            </div>

        </div>
        <!--右边内容-->
        <div class="content_right">
            <!--楼主信息-->
            <div class="person_info">
                <!--头像-->
                <div class="info_img">
                    <img src="${pageContext.request.contextPath}/${artUser.uimage}">
                    <p>${artUser.username}</p>
                </div>
                <div class="info_text">
                    <ul>
                        <li>
                            <span>金币</span>
                            <p>${artUser.score}</p>
                        </li>
                        <li>
                            <span>帖子</span>
                            <p>${artUser.articles.size()}</p>
                        </li>
                        <li>
                            <span>精华</span>
                            <p>66</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

<script>



        var replybtn = document.querySelector("#reply_btn");
        var textearetext = document.querySelector("#texteare_text");
        var textearetext1 = document.querySelector("#texteare_text1");
        var userreplay = document.querySelector("#user_replay");
        var replylinkcontent = document.querySelector("#reply_link_content");

        /*点击回复弹出模态框*/
        userreplay.onclick=function () {

            textearetext.innerText=textearetext1.value;

            window.location.href="${pageContext.request.contextPath}/savaReplay.do?uid=${sessionScope.user.uid}&aid=${article.aid}&flag=1&textearetext="+textearetext.value;
        }

        /*判断用户是否登录来设置点击回帖实践*/
        replybtn.onclick=function () {
            /*如果用户没有登录，则弹出登录提示，否则将回帖内容保存到数据库并将内容显示到页面上*/
            if(${sessionScope.user==null}){
                alert("登录之后才能回复")
            }else {
                window.location.href="${pageContext.request.contextPath}/savaReplay.do?uid=${sessionScope.user.uid}&aid=${article.aid}&flag=0&textearetext="+textearetext.value;
            }
        }

</script>
</html>