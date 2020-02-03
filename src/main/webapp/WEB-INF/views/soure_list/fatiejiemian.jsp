
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<html>
<head>
  
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
    <title>Title</title>
    <style>

        .forum_center{
            width: 100%;
            height: auto;
            background: rgba(0,0,0,0.05);
        }
        .center_fabiaotiezi_text{
            width: 1200px;
            margin-left: 100px;
            height: 50px;
            background:rgb(253 245 230) ;
            font-size: 20px;

            line-height: 60px;
            border: 1px solid rgba(0,0,0,0.1);
            color: cornflowerblue;


        }
        .center_fabiaotiezi_text span{
            display: block;
            width: 100px;
            height: 50px;
            background: antiquewhite;
            border-bottom: 3px solid royalblue;
            padding-left: 10px;
        }

        .center_zhuti{
            margin-left: 100px;
            font-size: 15px;
        }

        .center_tiezi_title{
            top: 60px;
            border: 1px solid rgba(0,0,0,0.01);
            width: 1038px;
            height: 60px;
            background:  rgba(0,0,0,0.1);
            position: relative;

        }

        .sellGold{
            height: 60px;
            width: 1200px;
            margin-top: 5px;
            border-bottom: 1px solid rgba(0,0,0,0.2);
        }

        #fabiaotiezi{
            margin-top: 20px;
            width: 100px;
            height: 40px;
        }

        .text_content{
            padding-top: 90px;
            padding-left: 30px;
            padding-right: 30px;
            line-height: 22px;
            text-indent: 2em;
        }

        .select_img{
            display: block;
            width: 30px;
            height: 60px;
            left: 60px;
            position: absolute;

        }

        .select_biaoqing{
            display: block;
            width: 30px;
            height: 60px;
            position: absolute;
            left: 10px;
        }
    </style>
</head>
<body>
    <%@include file="../menu.jsp"%>


<div class="forum_center" >

    <!--路径导航-->
    <div class="path_navigation">
        <ol class="breadcrumb">
            <li><a href="../index.html">首页</a></li>
            <li><a href="../index.html">学习交流</a></li>
            <li><a href="#">学习交流</a></li>
            <li><a href="#">javaEE学习交流</a></li>
            <li><a href="#">发表帖子</a></li>
        </ol>
    </div>
    <p class="center_fabiaotiezi_text"><span>发表帖子</span></p>

    <div class="center_zhuti">
        <form action="${pageContext.request.contextPath}/saveTieZi.do" method="post">
            <input type="hidden" name="uid" value="${uid}">
            主题分类：<input  type="text"  name="typename" size="30" value="${text.replaceAll(" ","+")}"/><br /><br /><br />
            帖子名称：<input type="text" name="aname" size="30"/>
            <div class="center_tiezi_title">
           					<span class="select_biaoqing" >
                                <img style="width: 30px; height: 30px" src="${pageContext.request.contextPath}/static/img/hot/biaoqing/0.gif" />
           					表情
           					</span>
                         <span class="select_img" >
                            <img style="width: 30px; height: 30px;" src="${pageContext.request.contextPath}/static/img/img_icon.gif" />
                             <input type="file" name="selecrt_imgs" value="图片">

           					</span>

            </div>
            <!--文本框-->
            <td>
                <textarea name="atext" rows="20" cols="120" class="text_content">

                 </textarea>
            </td>

            <div class="sellGold">
                主题售价<br />
                售价：<input type="text"  name="amoney" size="3" />金币
            </div>

            <input class="btn btn-info" id="fabiaotiezi" type="submit" value="发表帖子" />

        </form>
    </div>

</div>

<!--底部-->
<div class="buttom_index">

    <div class="buttom_index_top">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/static/img/button_index_img3.png" />
                    <span >足不出户学编程</span>
                </div>
                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/static/img/button_index_img1.png" />
                    <span>学习经验共分享</span>
                </div>
                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/static/img/button_index_img2.png" />
                    <span>前沿技术实时更新</span>
                </div>
            </div>
        </div>
    </div>

    <div class="buttom_index_buttom">
        <p style="font-size: 18px; color: white;margin-top: 30px;margin-left: 150px;">友情链接:</p>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <ul>
                        <li><a href="http://jquery.cuishifeng.cn/">前端</a></li>
                        <li><a href="#">SpringCloud</a></li>
                        <li><a href="#">SpringBoot</a></li>
                        <li><a href="#">Redis</a></li>
                    </ul>
                </div>
                <div class="col-md-3">

                    <ul>
                        <li><a href="#">人工智能</a></li>
                        <li><a href="#">区块链/go</a></li>
                        <li><a href="#">消息队列</a></li>
                        <li><a href="#">微服务框架</a></li>
                    </ul>
                </div>
                <div class="col-md-3">

                    <ul>
                        <li><a href="#">大数据</a></li>
                        <li><a href="#">Linux</a></li>
                        <li><a href="#">Spring</a></li>
                        <li><a href="#">并发编程</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <img width="200px" height="100px" style="border-radius: 10px;opacity: 0.8;" src="${pageContext.request.contextPath}/static/img/run.jpg" />
                </div>
            </div>
        </div>
    </div>

    <p style="text-align: center;margin-top: 30px; font-size: 15px;">
        <font color="cornflowerblue">©2020电科大嵌入B班lyh毕业设计&nbsp;</font>
    </p>
</div>
</body>
</html>
