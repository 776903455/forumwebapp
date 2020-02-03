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

        /*	.product_left{
                width: 800px;
                height: 1070px;
                background: pink;
                position: absolute;
                left: 100px;
                margin-top: 30px;

            }

            .product_right{
                width: 300px;
                height: 800px;
                position: absolute;
                left: 950px;
                margin-top: 30px;
            }*/

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
            height: 500px;
            width: 800px;
        }

        .hot_product{
            height: 500px;
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
            background: aqua;
            float: left;
            text-decoration: none;
            margin-top: 20px;
            margin-left: 20px;

        }
        .news_img ul li p{
            text-align: center;
        }
        .news_img ul li img{
            width: 230px;
            height: 120px;
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
            background: aqua;
            float: left;
            text-decoration: none;
            margin-top: 20px;
            margin-left: 20px;

        }
        .hot_img ul li p{
            text-align: center;
        }
        .hot_img ul li img{
            width: 230px;
            height: 120px;
        }

        .liwu_img{
            height: 500px;
            width: 300px;
            opacity: 0.7;
            margin-top: 30px;
        }
        .right_info{
            width: 300px;
            height: 300px;
            background: sandybrown;
        }
    </style>
</head>
<body>
    <%@include file="menu.jsp"%>

<div class="products_center">

    <div class="product_right">
        <div class="right_info">
            <table border="1px" bordercolor="red" width="300px" height="300px">
                <tr>
                    <td>头像</td>
                    <td>个人信息</td>
                </tr>
                <tr>
                    <td>交易成功</td>
                    <td>可用积分</td>
                </tr>
                <tr>
                    <td colspan="2">积分获取</td>

                </tr>
            </table>
        </div>
        <img class="liwu_img" src="${pageContext.request.contextPath}/static/img/liwu.jpg"/>
    </div>

    <div class="product_left">
        <div class="new_product">
            <div class="news_text">最新上架</div>
            <div class="news_img">
                <ul>
                    <li>
                        <a href=""><img src="${pageContext.request.contextPath}/static/img/run.jpg"></a>
                        <p>市场价：20￥</p>
                        <p>兑换积分：100</p>
                        <p><a href="">购买 </a></p>
                    </li>
                    <li>
                        <a href=""><img src="${pageContext.request.contextPath}/static/img/run.jpg"></a>
                        <p>市场价：20￥</p>
                        <p>兑换积分：100</p>
                        <p><a href="">购买 </a></p>
                    </li>
                    <li>
                        <a href=""><img src="${pageContext.request.contextPath}/static/img/run.jpg"></a>
                        <p>市场价：20￥</p>
                        <p>兑换积分：100</p>
                        <p><a href="">购买 </a></p>
                    </li>
                    <li>
                        <a href=""><img src="${pageContext.request.contextPath}/static/img/run.jpg"></a>
                        <p>市场价：20￥</p>
                        <p>兑换积分：100</p>
                        <p><a href="">购买 </a></p>
                    </li>
                </ul>
            </div>
        </div>


        <div class="hot_product">
            <div class="hot_text">热卖商品</div>
            <div class="hot_img">
                <ul>
                    <li>
                        <a href=""><img src="${pageContext.request.contextPath}/static/img/run.jpg"></a>
                        <p>市场价：20￥</p>
                        <p>兑换积分：100</p>
                        <p><a href="">购买 </a></p>
                    </li>
                    <li>
                        <a href=""><img src="${pageContext.request.contextPath}/static/img/run.jpg"></a>
                        <p>市场价：20￥</p>
                        <p>兑换积分：100</p>
                        <p><a href="">购买 </a></p>
                    </li>
                    <li>
                        <a href=""><img src="${pageContext.request.contextPath}/static/img/run.jpg"></a>
                        <p>市场价：20￥</p>
                        <p>兑换积分：100</p>
                        <p><a href="">购买 </a></p>
                    </li>
                    <li>
                        <a href=""><img src="${pageContext.request.contextPath}/static/img/run.jpg"></a>
                        <p>市场价：20￥</p>
                        <p>兑换积分：100</p>
                        <p><a href="">购买 </a></p>
                    </li>
                </ul>
            </div>
        </div>
    </div>

</div>

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
