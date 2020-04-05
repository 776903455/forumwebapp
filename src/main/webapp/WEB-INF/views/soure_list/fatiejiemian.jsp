<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet">

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js"></script>
    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/static/js/summernote-lite.min.js"></script>
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/static/css/menu.css" rel="stylesheet">
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

       /* .center_tiezi_title{
            top: 60px;
            border: 1px solid rgba(0,0,0,0.01);
            width: 1038px;
            height: 60px;
            background:  rgba(0,0,0,0.1);
            position: relative;

        }*/

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

       /* .text_content{
            padding-top: 90px;
            padding-left: 30px;
            padding-right: 30px;
            line-height: 22px;
            text-indent: 2em;
        }*/

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
    <%@include file="../menu.jsp"%>


<div class="forum_center" >

    <!--路径导航-->
    <div class="path_navigation">
        <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/toIndex.do">首页</a></li>
            <li><a href="#">正文</a></li>
        </ol>
    </div>
    <p class="center_fabiaotiezi_text"><span>发表帖子</span></p>

    <div class="center_zhuti">
        <form action="${pageContext.request.contextPath}/saveTieZi.do" method="post">
            <input type="hidden" name="uid" value="${uid}">
            主题分类：<input  readonly="readonly" type="text"  name="typename" size="30" value="${text.replaceAll(" ","+")}"/><br /><br /><br />
            帖子名称：<input type="text" name="aname" size="30"/>
            <div class="center_tiezi_title">
            </div>
            <!--文本框-->
            <td>
                <textarea name="atext" style="margin-top: 5px" id="summernote">
                 </textarea>
            </td>


            <c:if test="${text1.equals('技术交流')}">
                <div style="width: 1000px; height: 70px; position: relative">
                <div class="sellGold" style="width: 150px; height: 70px;position: absolute;border-right: bisque 1px dashed ">
                    <span style="color: blue;">主题售价:</span><br />
                    售价：<input type="text"  name="sellGold" size="3" />金币
                </div>

                <div class="resurl" style="width: 400px; height: 70px; position: absolute; left: 150px;top: 5px;border-right: bisque 1px dashed">
                    <span style="color: blue;">添加资源链接:</span> <br/>
                    url：<input type="text"  name="resourseurl"  />
                    提取码：<input type="text"  name="tqm"  size="3"/>
                </div>
            </div>


            </c:if>

            <c:if test="${text1.equals('免费资源')}">
            <div style="width: 1000px; height: 70px; position: relative">
                <div class="sellGold" style="width: 150px; height: 70px;position: absolute;border-right: bisque 1px dashed">
                    <span style="color: blue;">主题售价:</span><br />
                    售价：<input type="text"  name="amoney" size="3" value="0" readonly="readonly" />金币
                </div>

                <div class="resurl" style="width: 400px; height: 70px; position: absolute; left: 150px;top: 5px;border-right: bisque 1px dashed">
                    <span style="color: blue;">添加资源链接:</span> <br/>
                    url：<input type="text"  name="resourseurl"  />
                    提取码：<input type="text"  name="tqm"  size="3"/>
                </div>
            </div>
            </c:if>

            <input class="btn btn-info" id="fabiaotiezi" type="submit" value="发表帖子" />

        </form>
    </div>

</div>

<!--底部-->
<%@include file="../buttom.jsp"%>
</body>
<script src="${pageContext.request.contextPath}/static/js/menu.js"></script>
<script>
    $(function () {
        $('#summernote').summernote({
            placeholder: '输入内容',
            width:800,
            height:500
        });

    })
</script>
</html>
