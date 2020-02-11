<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<html>
<head>

    <style>

        *{
            margin: 0;
            padding: 0;
        }
        .center_all{
            width: 100%;
            /*height: auto;*/
            background: rgba(0,0,0,0.05);
        }
        .center_content{
            width: 1166px;
            height: auto;
            margin: auto;
            background: pink;
            position: relative;
        }

        /*左边内容*/
        .content_left{
            width: 800px;
            height: auto;
            /* background: aqua;*/
            position: absolute;
            left: 0;
        }

        /*标题*/
        .left_title{
            width: 800px;
            height: 80px;
            border-bottom: 1px solid rgba(0,0,0,0.1);

        }

        .left_title .title_top{
            width: 800px;
            height: 40px;
            margin-left: 30px;
            margin-top: 10px;
            font-size: 20px;
        }
        .left_title .title_buttom{
            width: 800px;
            height: 40px;
            background: darkcyan;
        }
        .left_title .title_buttom ul{
            width: 680px;
            height: 40px;
            list-style: none;
            margin-left: 60px;
        }
        .left_title .title_buttom ul li{
            float: left;
            text-align: center;
            background:wheat ;
            margin-left: 3px;
        }

        /*帖子内容*/
        .left_content{
            width: 800px;
            height: auto;

        }

        .textarea_content{
            width:100%;
            /* overflow:auto;
             word-break:break-all;*/
            height: auto;
            margin-top: 10px;
            line-height: 20px;
            border: 1px solid rgba(0,0,0,0.1);
            text-indent: 2em;
        }

        .reply_link{
            width: 700px;
            height: 50px;
            border: 1px dashed rgba(255,106,106,0.5);
            margin-top: 20px;
            margin-left: 50px;
            line-height: 50px;
            text-align: center;
        }



        /*右边内容*/
        .content_right{
            width: 300px;
            height: auto;
            /*   background: antiquewhite;*/
            position: relative;
            left: 866px;
        }

        .person_info{
            width: 300px;
            height: 300px;
            background: #1b6d85;
        }

        .info_img{
            width: 300px;
            height: 200px;

        }
        .info_img img{
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-top: 40px;
            margin-left: 100px;
        }
        .info_img p{
            margin-top: 5px;
            text-align: center;
        }

        .info_text{
            width: 300px;
            height: 100px;

        }

        .info_text ul{

            width: 250px;
            height: 50px;
            margin-left: 25px;
            background: rgba(0,0,0,0.1);
            list-style: none;
        }
        .info_text ul li{

            float: left;
            width: 80px;
            height: 50px;
            text-align: center;
            line-height: 20px;
            margin-left: 3px;
        }



        /*用户回复列表*/
        .buttom_reply_list{
            width: 800px;
            height: auto;
            margin-top: 30px;

        }
        .buttom_reply_list ul{
            width: 800px;
            height: auto;
            border-bottom: 1px solid rgba(0,0,0,0.1);
        }
        .buttom_reply_list ul li{

            list-style-type: none;
            height: 150px;
            width: 800px;
            border-bottom: 1px solid rgba(0,0,0,0.1);
        }

        .buttom_reply_list ul li:last-child{

            list-style: none;
            height: 150px;
            width: 800px;
            padding-top: 100px;
            padding-left: 550px;
            border-bottom:none;
        }

        .buttom_reply_list p{
            padding: 0;
            margin: 0;
        }
        .buttom_reply_list p img{
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-top: 5px;
        }
        .list_p1{
            width: 800px;
            height: 50px;
        }

        .list_p2{
            width: 800px;
            height: 60px;

        }
        .list_p3{
            width: 800px;
            height: 40px;
            position: relative;
        }



        /*回复文本框*/
        .reply_texteare{
            width: 800px;
            height: 100px;
            margin-top: 30px;
            position: relative;
        }
        .reply_texteare form p{
            width: 800px;
            height: 30px;
            position: relative;
            top: 30px;
            left: 0px;

        }

        .reply_texteare form p  .reply_texteare_0{
            width: 20px;
            height: 20px;
            position: absolute;
            top: 2px;
            left: 20px;
        }

        .reply_texteare form p   .reply_texteare_1{
            width: 25px;
            height: 25px;
            position: absolute;
            left: 50px;
        }

        .reply_texteare_text{
            padding-top: 50px;
            padding-left: 50px;
            line-height: 20px;
            text-indent: 2em;
        }

        #reply_btn{
            width: 100px;
            height: 40px;
            font-size: 18px;
            position: relative;
            left: 650px;
            margin-bottom: 30px;

        }

        #reply_fenye{
            border: none;
        }


    </style>
</head>
<body>
<%@include file="../menu.jsp"%>

<!--center-->

<div class="center_all">
    <!--路径导航-->
    <div class="path_navigation">
        <ol class="breadcrumb">
            <li><a href="../index.html">首页</a></li>
            <li><a href="../index.html">学习交流</a></li>
            <li><a href="#">学习交流</a></li>
            <li><a href="#">xxx</a></li>
            <li><a href="#">正文</a></li>
        </ol>
    </div>


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
                        <li>${article.user.username} 中级黑马 /</li>
                        <li>${artTime}/</li>
                        <li>18 人查看/</li>
                        <li>${article.apraise}回复/</li>
                        <li> 0 人收藏/</li>
                    </ul>
                </div>
            </div>
            <!--帖子内容-->
            <div class="left_content">
                <div class="textarea_content">
                    <p> 在java中实现页面跳转一般有两种方式，一种是请求转发，一种是重定向，那么这两者有什么区别呢？</p>
                    一、请求转发
                    <p>   请求转发一般是这样的一个过程：客户端发送请求到服务器端，服务器端经过匹配的servlet，并执行，当这个servlet执行完之后，调用getRequestDispacther()方法，把请求转发给指定的页面,整个流程都是在服务器端完成的，而且是在同一个请求里面完成的，因此servlet和页面共享的是同一个request，在servlet里面放的所有东西，在页面中都能取出来，整个过程是一个请求，一个响应。
                        如果以现实生活中的例子来举例，那么以拿快递来举例是比较好的。比如，A有快递到了，但是没有时间，那么A让B帮忙取快递，但是B答应了，想去取得时候B也没有时间，就让C取，C取好快递之后，交给A。</p>
                    二、重定向
                    <p>   重定向一般是这样的过程：客户端发送请求到服务器端，服务器端经过匹配的servlet，并执行，前面这个步骤是和请求转发一样，处理完之后调用了sendRedirect()方法，这个方法是response的方法，所以调用这个方法会向客户端返回这个响应，客户端会再次发送一个请求，去访问指定页面，紧接着客户端受到这个请求后，立刻发出一个新的请求，去请求访问页面。
                        上面过程中含有两个请求，这两个请求互不干扰，相互独立，在前面request里面setAttribute()的任何东西，在后面的request里面都获得不了。整个里面是两个请求，两个响应。</p>
                    二、重定向
                    <p>   重定向一般是这样的过程：客户端发送请求到服务器端，服务器端经过匹配的servlet，并执行，前面这个步骤是和请求转发一样，处理完之后调用了sendRedirect()方法，这个方法是response的方法，所以调用这个方法会向客户端返回这个响应，客户端会再次发送一个请求，去访问指定页面，紧接着客户端受到这个请求后，立刻发出一个新的请求，去请求访问页面。
                        上面过程中含有两个请求，这两个请求互不干扰，相互独立，在前面request里面setAttribute()的任何东西，在后面的request里面都获得不了。整个里面是两个请求，两个响应。</p>
                    <p>  如果以现实生活中的例子来举例，那么还以拿快递来举例是比较好的。比如，A有快递到了，但是没有时间，那么A让B帮忙取快
                        如果以现实生活中的例子来举例，那么还以拿快递来举例是比较好的。比如，A有快递到了，但是没有时间，那么A让B帮忙取快递，但是B没有答应，让A再找人去取，所以A再请C帮忙取，C取好快递之后，交给A。</p>
                    <img src="${pageContext.request.contextPath}/static/img/lunbotu1.jpg">
                </div>
                <div class="reply_link">游客，如果您要查看本帖隐藏内容请<a href="">回复</a></div>
                <div style="width: 800px;height: 100px;border: 1px solid red;text-align: center">看情况添加。。。。</div>
            </div>

            <!--用户回复列表-->

            <div class="buttom_reply_list">
                <ul>
                    <li>
                        <p class="list_p1">
                            <img  src="${pageContext.request.contextPath}/static/img/userimg.jpg">
                            <span>梦里花火</span>&nbsp;&nbsp;&nbsp;&nbsp;
                            <span>2017-12-5 200:59:27</span>
                        </p>
                        <p class="list_p2">
                            <span style="margin-left: 40px;margin-top: 5px">66666666666666666666666好东西，谢谢分享！</span>
                        </p>
                        <p class="list_p3">
                            <span style="position: absolute;left: 30px"><a href="#">回复</a></span>
                            <span style="position: absolute;right: 70px"><a href="#">举报</a></span>
                            <span  class="glyphicon glyphicon-thumbs-up" style="position: absolute;right: 40px"></span>
                            <span  class="glyphicon glyphicon-thumbs-down" style="position: absolute;right: 20px;transform: rotateY(180deg)"></span>
                        </p>
                    </li>
                    <li>
                        <p class="list_p1">
                            <img style="width: 40px;height: 40px;border-radius: 50%" src="${pageContext.request.contextPath}/static/img/userimg.jpg">
                            <span>梦里花火</span>
                            <span>2017-12-5 200:59:27</span>
                        </p>
                        <p class="list_p2">
                            <span style="margin-left: 40px;margin-top: 5px">66666666666666666666666好东西，谢谢分享！</span>
                        </p>
                        <p class="list_p3">
                            <span style="position: absolute;left: 30px"><a href="#">回复</a></span>
                            <span style="position: absolute;right: 70px"><a href="#">举报</a></span>
                            <span  class="glyphicon glyphicon-thumbs-up" style="position: absolute;right: 40px"></span>
                            <span  class="glyphicon glyphicon-thumbs-down" style="position: absolute;right: 20px;transform: rotateY(180deg)"></span>
                        </p>
                    </li>
                    <li>
                        <p class="list_p1">
                            <img style="width: 40px;height: 40px;border-radius: 50%" src="${pageContext.request.contextPath}/static/img/userimg.jpg">
                            <span>梦里花火</span>
                            <span>2017-12-5 200:59:27</span>
                        </p>
                        <p class="list_p2">
                            <span style="margin-left: 40px;margin-top: 5px">66666666666666666666666好东西，谢谢分享！</span>
                        </p>
                        <p class="list_p3">
                            <span style="position: absolute;left: 30px"><a href="#">回复</a></span>
                            <span style="position: absolute;right: 70px"><a href="#">举报</a></span>
                            <span  class="glyphicon glyphicon-thumbs-up" style="position: absolute;right: 40px"></span>
                            <span  class="glyphicon glyphicon-thumbs-down" style="position: absolute;right: 20px;transform: rotateY(180deg)"></span>
                        </p>
                    </li>
                    <li>
                        <p class="list_p1">
                            <img style="width: 40px;height: 40px;border-radius: 50%" src="${pageContext.request.contextPath}/static/img/userimg.jpg">
                            <span>梦里花火</span>
                            <span>2017-12-5 200:59:27</span>
                        </p>
                        <p class="list_p2">
                            <span style="margin-left: 40px;margin-top: 5px">66666666666666666666666好东西，谢谢分享！</span>
                        </p>
                        <p class="list_p3">
                            <span style="position: absolute;left: 30px"><a href="#">回复</a></span>
                            <span style="position: absolute;right: 70px"><a href="#">举报</a></span>
                            <span  class="glyphicon glyphicon-thumbs-up" style="position: absolute;right: 40px"></span>
                            <span  class="glyphicon glyphicon-thumbs-down" style="position: absolute;right: 20px;transform: rotateY(180deg)"></span>
                        </p>
                    </li>
                    <li>

                        <nav style="width: 650px; padding-left: 20px;" >
                            <ul class="pagination" id="reply_fenye">
                                <li>
                                    <a href="#" aria-label="Previous">
                                        <span aria-hidden="true">&laquo</span>
                                    </a>
                                </li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>

                                <li>
                                    <a href="#" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
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
                    <img src="${pageContext.request.contextPath}/static/img/luozhu.png">
                    <p>填个用户名</p>
                </div>
                <div class="info_text">
                    <ul>
                        <li>
                            <span>金币</span>
                            <p>1000</p>
                        </li>
                        <li>
                            <span>帖子</span>
                            <p>666</p>
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
<
<script>
        var replybtn = document.querySelector("#reply_btn");
        var textearetext = document.querySelector("#texteare_text");
        /*判断用户是否登录来设置点击回帖实践*/
        replybtn.onclick=function () {
            /*如果用户没有登录，则弹出登录提示，否则将回帖内容保存到数据库并将内容显示到页面上*/
            if(${sessionScope.user==null}){
                alert("登录之后才能回复")
            }else {
                $.ajax({
                   type:"post",
                   url:"${pageContext.request.contextPath}/savaReplay.do?username=${sessionScope.user.username}&aid=${article.aid}",
                    data:"textearetext="+textearetext.value,
                        success : function(result) {

                     }
                });
                textearetext.innerHTML="";

            }
        }

</script>
</html>