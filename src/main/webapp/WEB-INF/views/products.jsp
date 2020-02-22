<%@ taglib prefix="if" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />

    <title></title>
    <style>
        *{margin: 0;padding: 0;}

        .products_center{
            width: 1366px;
            height: 1100px;
            background: rgba(0,0,0,0.2);
            position: relative;
        }


        .product_left{
            width: 800px;
            height: 1070px;
            /*	background: pink;*/
            position: absolute;
            left: 450px;
            margin-top: 30px;

        }

        .product_right{
            width: 300px;
            height: 800px;
            position: absolute;
            left: 100px;
            margin-top: 100px;
        }

        .new_product{
            height: 520px;
            width: 800px;
        }

        .hot_product{
            height: 520px;
            width: 800px;


        }


        .news_text{
            width: 800px;
            height: 40px;
            background: gainsboro;
            font-size: 25px;
            margin-top: 10px;

        }
        .news_img ul li{
            width: 230px;
            height: 200px;
            background: rgba(0,0,0,0.05);
            float: left;
            text-decoration: none;
            margin-top: 20px;
            margin-left: 20px;
            list-style: none;

        }
        .news_img ul li p{
            padding: 0;
            margin: 0;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
            text-align: center;
        }
        .news_img ul li img{
            width: 230px;
            height: 120px;
        }

        .news_img ul li img:hover{
            width: 235px;
            height: 125px;
        }

        /*热卖*/
        .hot_text{
            width: 800px;
            height: 40px;
            background: gainsboro;
            font-size: 25px;
            margin-top: 10px;

        }
        .hot_img ul li{
            width: 230px;
            height: 200px;
            background: rgba(0,0,0,0.05);
            float: left;
            text-decoration: none;
            margin-top: 20px;
            margin-left: 20px;
            list-style: none;

        }
        .hot_img ul li p{
            padding: 0;
            margin: 0;
            overflow: hidden;
            white-space: nowrap;
            text-overflow: ellipsis;
            text-align: center;
        }
        .hot_img ul li img{
            width: 230px;
            height: 120px;
        }

        .hot_img ul li img:hover{
            width: 235px;
            height: 125px;
        }

        .liwu_img{
            height: 500px;
            width: 300px;
            opacity: 0.7;
            margin-top: 10px;

        }
        .right_info{
            width: 300px;
            height: 300px;
            background: sandybrown;
            list-style: none;
            text-align: center;
        }

        .exchangeinfo{
            display: inline-block;
            width: 350px;
            height: 70px;
            position: absolute;
            top: 250px;
            left: 550px;
            border-radius: 5px;
            background: gold;
            text-align: center;
            color: white;
            font-size: 20px;
            opacity: 1;
        }
        .exchangeinfo span{
            margin-top: 20px;
        }
    </style>
</head>
<body>



    <%@include file="menu.jsp"%>

    <!--路径导航-->
    <div class="path_navigation">
        <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/toIndex.do">首页</a></li>
            <li><a href="index.html">礼品兑换</a></li>
        </ol>
    </div>

<div class="products_center">

    <div class="product_right">
        <c:if test="${sessionScope.user!=null}">
            <div class="right_info">
                <table border="1px" bordercolor="red" width="300px" height="300px">
                    <tr>
                        <td >
                            <img style="width: 100px;height: 100px; border-radius: 50%;margin: auto;"
                                 src="${pageContext.request.contextPath}/${sessionScope.user.uimage}" >
                        </td>
                        <td>${sessionScope.user.username}</td>
                    </tr>
                    <tr>
                        <td>交易成功:${sessionScope.user.exchangenumber}</td>
                        <td>可用金币:${sessionScope.user.score}</td>
                    </tr>
                    <tr>
                        <td colspan="2">积分获取</td>
                    </tr>
                </table>
            </div>
        </c:if>

        <img class="liwu_img" src="${pageContext.request.contextPath}/static/img/liwu.jpg"/>
    </div>

    <div class="product_left">
        <div class="new_product">
            <div class="news_text">最新上架</div>
            <div class="news_img">
                <ul>
                <if:forEach var="newslist" items="${sessionScope.newsList}">
                    <li>
                    <a href=""><img src="${pageContext.request.contextPath}/${newslist.gimage}"></a>
                    <p>名称：${newslist.gname}</p>
                    <p style="text-decoration:line-through">市场价：￥${newslist.marketPrice}</p>
                    <p style="color: red">兑换金币：${newslist.gmoney}</p>
                    <p><a href="${pageContext.request.contextPath}/toProductInfo.do?gid=${newslist.gid}">兑换 </a></p>
                    </li>
                </if:forEach>
                </ul>
            </div>
        </div>


        <div class="hot_product">
            <div class="hot_text">热卖商品</div>
            <div class="hot_img">

                <ul>
                    <if:forEach var="giftlist" items="${sessionScope.listGift}">
                    <li>
                        <a href=""><img src="${pageContext.request.contextPath}/${giftlist.gimage}"></a>
                        <p>名称：${giftlist.gname}</p>
                        <p style="text-decoration:line-through">市场价：￥${giftlist.marketPrice}</p>
                        <p style="color: red">兑换金币：${giftlist.gmoney}</p>
                        <p><a href="${pageContext.request.contextPath}/toProductInfo.do?gid=${giftlist.gid}">兑换 </a></p>
                    </li>
                    </if:forEach>
                </ul>
            </div>
        </div>
    </div>

</div>

    <span class="exchangeinfo"><span>

    </span></span>

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
        <script>
            var exchangeinfo = document.querySelector(".exchangeinfo span");
            var exchangeinfo1 = document.querySelector(".exchangeinfo");

                if(${changeInfo!=null}){

                    exchangeinfo1.style.opacity="1";
                    exchangeinfo.innerText="${changeInfo}";
                   var time= setInterval(function () {

                        exchangeinfo1.style.opacity="0";
                        clearInterval(time);
                    },5000);
                }else {

                    exchangeinfo1.style.opacity="0";
                }


        </script>
</html>
