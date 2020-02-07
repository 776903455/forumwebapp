<%@ taglib prefix="if" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="../js/jquery-3.3.1.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="../js/bootstrap.min.js"></script>
    <link href="../css/index.css" rel="stylesheet" />
    <title></title>
    <style>
        *{margin: 0;padding: 0;}

        .productInfosInfo_center{
            width: 1366px;
            height: 900px;
            background: rgba(0,0,0,0.2);
            position: relative;
        }



        .productInfo_left{
            width: 800px;
            height: 1070px;
            /*	background: pink;*/
            position: absolute;
            left: 450px;


        }

        .productInfo_right{
            width: 300px;
            height: 800px;
            position: absolute;
            left: 100px;
            margin-top: 100px;
        }

        .right_info{
            width: 300px;
            height: 300px;
            background: sandybrown;
            list-style: none;
            text-align: center;
        }

        .left_top{
            width: 700px;
            height: 50px;
            background: slateblue;
            margin-top: 70px;">
        }

        .left_button{
            width: 700px;
            height: 400px;
            background: antiquewhite;
        }

        .button_left{
            width: 300px;
            height: 400px;
            background: darkolivegreen;
            float: left;
        }
        .button_rigth{
            width: 400px;
            height: 400px;
            background: goldenrod;
            float: left;
        }
        .button_rigth table tr{
            width: 400px;
            height: 30px;
            border-bottom: 1px gray dashed;

        }
        .button_rigth table tr td:first-child{
            width:100px ;
            height: 30px;

        }


        .product_desc{
            width: 700px;
            height: auto;
            margin-top: 30px;
            background: darkcyan;
        }
        .send_user{
            width: 700px;
            height: auto;
            margin-top: 30px;
            background: darkcyan;
        }


    </style>
</head>
<body>
    <%@include file="menu.jsp"%>

<!--路径导航-->
<div class="path_navigation">
    <ol class="breadcrumb">
        <li><a href="index.html">首页</a></li>
        <li><a href="index.html">礼品兑换</a></li>
        <li><a href="#">礼品商城</a></li>
    </ol>
</div>

<div class="productInfosInfo_center">

    <div class="productInfo_right">
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


    </div>

    <div class="productInfo_left">
        <!--商品详细信息-->
        <div class="left_top"
        ><span style="font-size: 20px;"><strong>${giftInfo.gname}</strong></span>
        </div>

        <div class="left_button">
            <div class="button_left">
                <img style="width: 300px;height: 300px;" src="${pageContext.request.contextPath}/${giftInfo.gimage}" />
            </div>
            <div class="button_rigth">
                <table width="400px" height="300px">
                    <tr>
                        <td>物品ID</td>
                        <td>${giftInfo.gid}</td>
                    </tr>
                    <tr>
                        <td>物品名称</td>
                        <td>${giftInfo.gname}</td>
                    </tr>
                    <tr>
                        <td>物品数量</td>
                        <td>${giftInfo.number}</td>
                    </tr>
                    <tr>
                        <td>物品价格</td>
                        <td>${giftInfo.marketPrice}</td>
                    </tr>
                    <tr>
                        <td>兑换积分</td>
                        <td>${giftInfo.gmoney}</td>
                    </tr>

                    <tr>
                        <td>交易类型</td>
                        <td>asasdasdasd</td>
                    </tr>
                    <tr>
                        <td colspan="2"  style="cursor: pointer" class="btn btn-info"
                            id="exchange_gift">兑换</td>
                    </tr>
                </table>
            </div>
        </div>

        <!--商品描述-->
        <div class="product_desc">

            <p style="font-size: 20px;"><strong>${giftInfo.gname}</strong></p>
            <p style="font-size: 18px;">
                ${giftInfo.gdesc}
            </p>
        </div>

        <!--发货方式-->
        <div class="send_user">
            <p style="font-size: 20px;"><strong>领取方式</strong></p>
            <p style="font-size: 18px;">
                1、自取：电子科技大学中山学院北门自取；<br>
                2、邮寄：告知详细地址，三天之内发货，快递费自付哦，亲。
            </p>
        </div>
    </div>

</div>

<div class="buttom_index">
    <div class="buttom_index_top">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <img src="../img/button_index_img3.png" />
                    <span >足不出户学编程</span>
                </div>
                <div class="col-md-4">
                    <img src="../img/button_index_img1.png" />
                    <span>学习经验共分享</span>
                </div>
                <div class="col-md-4">
                    <img src="../img/button_index_img2.png" />
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
                    <img width="200px" height="100px" style="border-radius: 10px;opacity: 0.8;" src="../img/run.jpg" />
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
            var exchangegift = document.getElementById("exchange_gift");
            exchangegift.onclick=function () {
                if(${sessionScope.user!=null}){
                    if(${giftInfo.gmoney>sessionScope.user.score}){
                        alert("兑换礼品失败，你的金币不足!");
                    }else {
                        window.location.href="${pageContext.request.contextPath}/exchangeGift.do?uid=${sessionScope.user.uid}&gid=${giftInfo.gid}&gmoney=${giftInfo.gmoney}&score=${sessionScope.user.score}&exchangenumber=${sessionScope.user.exchangenumber}";
                    }
                }else {
                    alert("请先登录!");
                }

            }
        </script>


</html>

