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
    <link href="${pageContext.request.contextPath}/static/css/menu.css" rel="stylesheet">
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
    <%@include file="menu.jsp"%>

<!--路径导航-->
<div class="path_navigation">
    <ol class="breadcrumb">
        <li><a href="${pageContext.request.contextPath}/toIndex.do">首页</a></li>
        <li><a href="${pageContext.request.contextPath}/toProducts.do">礼品兑换</a></li>
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

    <%--模态框--%>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">兑换信息：</h4>
                </div>
                <form action="${pageContext.request.contextPath}/exchangeGift.do?gid=${giftInfo.gid}&gmoney=${giftInfo.gmoney}&score=${sessionScope.user.score}&exchangenumber=${sessionScope.user.exchangenumber}&number=${giftInfo.number}&uid=${sessionScope.user.uid}" method="post">
                <div class="modal-body">

                        <table border="1px">
                            <tr >
                                <td>邮箱</td>
                                <td><input type="text" name="qq"></td>
                            </tr>
                            <tr >
                                <td>收货地址</td>
                                <td><input type="text" name="addr"></td>
                            </tr>
                            <tr >
                                <td>联系电话</td>
                                <td><input type="text" name="phone"></td>
                            </tr>
                        </table>
                  </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">退出</button>
                    <%--<button type="button" class="btn btn-primary" id="duihuan_dh">兑换</button>--%>
                    <input type="submit" class="btn btn-primary" value="兑换">
                </div>
                </form>
            </div>
        </div>
    </div>

    <%@include file="buttom.jsp"%>
</body>
<script src="${pageContext.request.contextPath}/static/js/menu.js"></script>
        <script>
            var exchangegift = document.getElementById("exchange_gift");
            var duihuandh = document.querySelector("#duihuan_dh");
            exchangegift.onclick=function () {
                if(${sessionScope.user!=null}){
                    if(${giftInfo.gmoney>sessionScope.user.score}){
                        alert("兑换礼品失败，你的金币不足!");
                    }else {
                        $('#myModal').modal('show');
                       /* window.location.href="";*/
                    }
                }else {
                    alert("请先登录!");
                }

            }

           /* duihuandh.onclick=function () {
                window.location.href="";
            }*/
        </script>
</html>

