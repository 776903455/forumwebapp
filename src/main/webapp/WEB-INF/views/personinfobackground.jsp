<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/static/css/menu.css" rel="stylesheet">
    <title>IT在线学习平台</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        .content_info{
            width: 1050px;
            height:600px;
            /* background: pink;*/
            margin-left:150px;
            border: 1px grey solid;
        }

        .info_left{
            width: 150px;
            height: 600px;
            background: rgba(0,0,0,0.1);
            float: left;
        }
        .info_left ul li{
            width: 150px;
            height: 50px;
            margin-top: 2px;
            list-style: none;
            font-size: 18px;
            line-height: 50px;
            color: black;
            padding-left: 50px;

        }
        .info_left ul li:hover{
            cursor: pointer;
            background: rgba(0,0,0,0.1);
        }

        .info_right{
            width: 898px;
            height: 600px;
            /*  background: pink;*/
            float: left;
            display: none;


        }
        .info_right1{
            width: 898px;
            height: 600px;
            /*background: pink;*/
            float: left;
            display: none;

        }

        .info_right2{
            width: 898px;
            height: 600px;
            /*background: pink;*/
            float: left;


        }

        .right_top{
            width: 900px;
            height: 50px;
            border: 1px grey solid;
            color: deepskyblue;
            padding-left: 30px;
            padding-top: 8px;
            font-size: 18px;
        }

        .info_right1  .buttom_left{
            width: 150px;
            height: 150px;
            margin-left: 150px;
            margin-top: 80px;
            float: left;
            border: 1px grey solid;

        }

        .info_right1  .buttom_left :hover{
            cursor: pointer;
        }
        .info_right1  .buttom_centern{
            margin-left: 50px;
            margin-top: 80px;
            float: left;

        }


        .info_right1  .buttom_right{
            width: 150px;
            height: 150px;
            background: #2aabd2;
            float: left;
            margin-top: 80px;
            margin-left: 80px;

        }



        .right2_top{
            width: 900px;
            height: 150px;
            background: rgba(190,35,252,0.1);
        }
        .right2_buttom{
            width:900px;
            height: 430px;
            /*  background: #2aabd2;*/
            margin-top: 20px;
        }


        .head1 .container .row .search_img{
            width: 25px;
            height: 25px;
            position: absolute;
            top: 25px;
            right: 20px;

        }

    </style>
</head>
<body>
        <%@include file="menu.jsp"%>



<!--过度图-->
<div style="width: 1349px;height: 200px;background:rgba(25,191,255,0.8)" >
    <img src="${pageContext.request.contextPath}/static/img/personinfoback.jpg" style="width: 1000px;padding-left: 20%">
</div>

<!--界面设置-->
<div class="content_info" style="margin-top: 3px">
    <div class="info_left">
        <ul>
            <li disabled="disabled"><span>个人中心</span></li>
            <li id="myshouye" style="background: #2aabd2"><span >首页</span></li>
            <li id="myxx"><span>我的信息</span></li>
            <li id="mytx"><span>我的头像</span></li>
        </ul>
    </div>

    <div class="info_right">
        <div class="right_top">我的信息：</div>
        <div class="form-group" class="right_buttom;" >
            <form action="${pageContext.request.contextPath}/updatePersonInfo.do"  style="margin-left: 200px;margin-top: 10px">
                用户名：${user.uname}
                <br>  <br>
                <label>昵称:</label>
                <input type="text" name="uname"  class="form-control" style="width: 30%">
                <span style="position: relative;left: 300px;top: -25px;color: grey">注：修改一次昵称需要消耗5个金币</span>
                <br>  <br>
                <label>地址:</label>
                <input type="text" name="addr"  class="form-control" style="width: 30%">
                <br>  <br>
                <label> 手机:</label>
                <input type="text" name="phone"  class="form-control" style="width: 30%">
                <br>  <br>
                性别：<input type="radio" name="sex" value="男" checked="checked">男
                <input type="radio" name="sex"value="女">女
                <br>  <br>
                <input type="hidden" name="uid" value="${user.uid}">
                <input  style="width: 100px;margin-left: 300px" class="btn btn-info" id="dl_button1" type="submit"  value="修改"  >
            </form>
        </div>
    </div>

    <div class="info_right1">
        <div class="right_top">我的头像：</div>
        <div class="right_buttom;" >
            <form action="${pageContext.request.contextPath}/updateTouXiang.do?uid=${user.uid}" method="post" enctype="multipart/form-data">
                <div class="buttom_left"  >
                    <img id="imgs" src="${pageContext.request.contextPath}/static/img/载入图片.jpg" >
                </div>
                <input id="hiddenfile" type="file" name="file" onchange="changeImg()">
                <div class="buttom_centern" >
                    <img style="width: 80px;height: 80px; margin-top: 30px;margin-left: 30px"
                         src="${pageContext.request.contextPath}/static/img/jiantou.jpg">
                </div>

                <div class="buttom_right">
                    <img style="width: 80px;height: 80px; border-radius: 100%;margin-top: 30px;margin-left: 30px"
                         src="${user.uimage}">
                </div>
                <input id="hiddensumbit" type="submit">
            </form>

        </div>

        <div style="margin-top: 280px;margin-left: 170px;">
            <span style="color: darkgray">请选择图片上传：大小180 * 180像素支持JPG、PNG等格式，图片需小于2M</span>
        </div>

        <div style="margin-top: 20px;margin-left: 360px;">
            <button id="btn_gx" class="btn btn-info"
                    style="border-radius: 5px;width: 100px;height: 40px;color: white">
                更新
            </button>
        </div>
    </div>

    <div class="info_right2">
        <div class="right2_top">
            <table width="900px" >
                <tr style="height: 70px;text-align: right;" >
                    <td style="width: 20%;" rowspan="2">
                        <img src="${user.uimage}" style="width: 100px;height: 100px;border-radius: 100%">
                    </td>
                    <td style="width: 30%">
                        <p style="width: 100px;height: 40px;margin-top: 30px;margin-left: 20px">${user.username}</p>
                    </td>
                    <td style="text-align: left">
                        <span style="border: 1px grey solid;display: inline-block;width:
                        100px;height: 40px;padding-top: 8px">
                           <a style="padding-left: 20px" href="#">修改资料</a>
                        </span>
                    </td>
                </tr>
                <tr style="height: 70px;" >

                    <td style="width: 30%;">
                        <p style="width: 40px;height: 40px;border-radius: 100%;
                        background: gold;text-align: center;line-height: 35px;
                         margin-left: 40px;float: left">
                            金
                        </p>
                        <p style="float: left;width: 40px;height: 40px;margin-top: 10px;">${user.score}</p>
                    </td>
                    <td>
                         <span style="border: 1px grey solid;display: inline-block;width:
                        100px;height: 40px;padding-top: 8px">
                           <a style="padding-left: 20px" href="#"> 个人空间</a>
                        </span>
                    </td>
                </tr>
            </table>
        </div>
        <div class="right2_buttom" >
            <p style="padding-left: 20px;width: 100px;height: 40px;background: dodgerblue;
                color: white;line-height: 30px;padding-left: 20px;font-size: 15px;border-radius: 5px" >我的帖子：</p>
            <div>
                <table class="table table-bordered">
                    <thead >
                    <tr style="height: 40px;background: rgba(0,0,0,0.1)">
                        <td style="width: 60%;padding-left: 20px">主题</td>
                        <td>板块</td>
                        <td>回复/查看</td>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="personInfoPage" items="${personArt}">
                    <tr >
                        <td style="width: 60%;padding-left: 20px;height: 50px">
                            <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=${personInfoPage.aid}">${personInfoPage.aname}</a>
                        </td>
                        <td>${personInfoPage.categorysecond.csname}</td>
                        <td>${personInfoPage.replist.size()}/${personInfoPage.looknum}</td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <!--分页-->
            <div class="fenye">
                <!--分页-->
                <div class="page_fenye">
                    <nav style="width: 650px; padding-left: 20px;">
                        <ul class="pagination">
                            <li>
                                <a href="${pageContext.request.contextPath}/toperbackground.do?uid=${sessionScope.user.uid}&pn=1" aria-label="Next">
                                    <span aria-hidden="true">首页</span>
                                </a>
                            </li>
                            <c:if test="${personInfoPage.hasPreviousPage}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/toperbackground.do?uid=${sessionScope.user.uid}&pn=${personInfoPage.pageNum-1}" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                            </c:if>


                            <c:forEach items="${personInfoPage.navigatepageNums}" var="navNums">
                                <c:if test="${navNums==personInfoPage.pageNum}">
                                    <li class="active"><a href="#">${navNums}</a></li>
                                </c:if>
                                <c:if test="${navNums!=personInfoPage.pageNum}">
                                    <li ><a href="${pageContext.request.contextPath}/toperbackground.do?uid=${sessionScope.user.uid}&pn=${navNums}">${navNums}</a></li>
                                </c:if>
                            </c:forEach>

                            <c:if test="${personInfoPage.hasNextPage}">
                                <li>
                                    <a href="${pageContext.request.contextPath}/toperbackground.do?uid=${sessionScope.user.uid}&pn=${personInfoPage.pageNum+1}" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>
                            </c:if>


                            <li>
                                <a href="${pageContext.request.contextPath}/toperbackground.do?uid=${sessionScope.user.uid}&pn=${personInfoPage.pages}" aria-label="Next">
                                    <span aria-hidden="true">尾页</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>

        </div>

    </div>

</div>
</body>
<script src="${pageContext.request.contextPath}/static/js/menu.js"></script>
<script>
    $(function () {

        $("#myshouye").click(function () {
            $(".info_right").css("display","none");
            $(".info_right1").css("display","none");
            $(".info_right2").css("display","block");
            $("#mytx").css("background","none");
            $("#myxx").css("background","none");
            $("#myshouye").css("background","#2aabd2");
        })

        $("#myxx").click(function () {
            $(".info_right").css("display","block");
            $(".info_right1").css("display","none");
            $(".info_right2").css("display","none");
            $("#myxx").css("background","#2aabd2");
            $("#mytx").css("background","none");
            $("#myshouye").css("background","none");

        })

        $("#mytx").click(function () {
            $(".info_right1").css("display","block");
            $(".info_right").css("display","none");
            $(".info_right2").css("display","none");
            $("#myxx").css("background","none");
            $("#mytx").css("background","#2aabd2");
            $("#myshouye").css("background","none");
        })
        /*隐藏file输入框*/
        $("#hiddenfile").hide();
        /*点击图片触发file事件*/
        $(".buttom_left").click(function () {
            $("#hiddenfile").click();
        })


        $("#hiddensumbit").hide();

        $("#btn_gx").click(function () {
            $("#hiddensumbit").click();
        })
    })

    var result = document.getElementsByClassName(".buttom_left");
    var file = document.getElementById("hiddenfile");

    //判断浏览器是否支持FileReader接口
    if(typeof FileReader == 'undefined')  {
        result.InnerHTML = "<p>你的浏览器不支持FileReader接口！</p>";
        //使选择控件不可操作
        file.setAttribute("disabled", "disabled"); //使得之前操作失效，重新启动
    }


    /*当file改变时触发此事件*/
    function changeImg() {
        /*读取file的内容*/
        var file = document.getElementById("hiddenfile").files[0]
        console.log("file:"+file.type);

        /*检验是否是图片*/
        if(!/image\/\w+/.test(file.type)) {
            alert("这不是图片文件！请检查！");
            return false;
        }

        var reader=new FileReader();
        reader.readAsDataURL(file)
        reader.onload=function () {
            $(".buttom_left").empty();
            $(".buttom_left").append("<img id='imgs'style=\"width:150px;height: 150px\"  src=''>");
            $("#imgs").attr("src",this.result);
        }
    }

</script>
</html>