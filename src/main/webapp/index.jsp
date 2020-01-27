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
    <title>IT在线学习平台</title>
</head>
<body>
    <%@include file="menu.jsp"%>

<div class="center_index">
    <!--轮播图-->
    <div class="container">
        <div class="row">
            <div class="col-md-1" id="lunbotu_left">
                <ul>
                    <li><a href="#">热门主题</a></li>
                    <li><a href="#">java</a></li>
                    <li><a href="#">大数据</a></li>
                    <li><a href="#">PHP</a></li>
                    <li><a href="#">WEB前端</a></li>
                    <li><a href="#">Phthon</a></li>
                    <li><a href="#">人工智能</a></li>
                    <li><a href="#">Linux</a></li>
                </ul>
            </div>
            <div class="col-md-8">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <a href="#">   <img src="${pageContext.request.contextPath}/static/img/lunbotu1.jpg" ></a>
                        </div>
                        <div class="item">
                            <a href="#"> <img src="${pageContext.request.contextPath}/static/img/lunbotu2.jpg" ></a>
                        </div>
                        <div class="item">
                            <a href="#">   <img src="${pageContext.request.contextPath}/static/img/lunbotu3.jpg" ></a>
                        </div>
                        <div class="item">
                            <a href="#"> <img src="${pageContext.request.contextPath}/static/img/lunbotu4.jpg" ></a>
                        </div>
                        <div class="item">
                            <a href="#"> <img src="${pageContext.request.contextPath}/static/img/lunbotu5.jpg" ></a>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="col-md-3" id="lunbotu_ringt">
                <div class="lunbotu_ringt_top">
                    <button type="button" class="btn btn-info"
                            style="width: 120px;height: 50px; border-radius:10px;font-size: 20px;">发帖</button>
                    <button type="button" class="btn btn-success"
                            style="width: 120px;height: 50px; border-radius:10px;font-size: 20px;margin-left: 15px;">回帖</button>
                </div>
                <div class="lunbotu_ringt_button">
                    <p style="font-size: 20px; padding-top: 20px;margin-left: 20px;">最新活动</p>
                    <a href="#">
                        <img src="${pageContext.request.contextPath}/static/img/huodong1.jpg" />
                    </a>
                </div>
            </div>
        </div>
    </div>

    <!--过渡图片-->
    <div class="center_index_guodu1">
        <img height="50px" width="100%" style="margin-top: 15px; align-content: center; " src="${pageContext.request.contextPath}/static/img/guodu1.jpg">
    </div>

    <!--热门资源-->
    <div class="center_index_hot" >
        <div class="hot_resource_top">
					<span class="hot_tital_txt">
						<strong>——</strong>&nbsp;&nbsp;
						<strong>热</strong>&nbsp;&nbsp;
						<strong>门</strong>&nbsp;&nbsp;
						<strong>资</strong>&nbsp;&nbsp;
						<strong>源</strong>&nbsp;&nbsp;
						<strong>——</strong>
					</span>
        </div>
        <div class="hot_resource_buttom">
            <div class="hot_top_buttom_top">
                <span><a href=""><img src="${pageContext.request.contextPath}/static/img/hot_img1.jpg"></a></span>
                <span><a href=""><img src="${pageContext.request.contextPath}/static/img/hot_img2.jpg"></a></span>
                <span><a href=""><img src="${pageContext.request.contextPath}/static/img/hot_img3.jpg"></a></span>
            </div>
            <div class="hot_top_buttom_buttom">
                <div class="hot_top_buttom_buttom_left">
                    <ul>
                        <li><a href="#">黑马程序员——2019年全年开班计划表黑马程序员——2019年全年开班计划表黑马程序员——2019年全年开班计划表</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表马程序员——2019年全年开班计划表</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表</a></li>

                    </ul>
                </div>
                <div class="hot_top_buttom_buttom_rigth">
                    <ul>
                        <li><a href="#">黑马程序员——2019年全年开班计划表年全年开班计划表黑马程序员——2019</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表</a></li>
                        <li><a href="#">黑马程序员——2019年全年开班计划表</a></li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="center1_index">
    <div class="center1_index_study" >
        <div class="study_resource_top">
					<span class="study_tital_txt">
						<strong>——</strong>&nbsp;&nbsp;
						<strong>学</strong>&nbsp;&nbsp;
						<strong>习</strong>&nbsp;&nbsp;
						<strong>交</strong>&nbsp;&nbsp;
						<strong>流</strong>&nbsp;&nbsp;
						<strong>——</strong>
					</span>
        </div>
        <div class="study_resource_buttom">
            <div class="study_resource_buttom_top">
                <div class="study_top_left">
                    <a href="#"><img class="jishufenxiang" src="${pageContext.request.contextPath}/static/img/jishifenxiang.jpg"></a>
                    <a href="#" style="text-decoration: none;color: black;">
                        <span>技术分享</span>
                    </a>
                    <p >
                        <em>主题：2w</em>
                        <em>贴数：2w</em>
                    </p>
                </div>
                <div class="study_top_right">
                    <a href="#"><img class="xuexiluxian" src="${pageContext.request.contextPath}/static/img/xuexiluxian.jpg"></a>
                    <a href="#" style="text-decoration: none;color: black;">
                        <span>学习路线</span>
                    </a>
                    <p >
                        <em>主题：2w</em>
                        <em>贴数：2w</em>
                    </p>
                </div>
            </div>

            <div class="study_resource_buttom_buttom">
                <div class="study_button_left">
                    <a href="#"><img class="mianfeiziyuan" src="${pageContext.request.contextPath}/static/img/mianfeiziyuan.jpg"></a>
                    <a href="#" style="text-decoration: none;color: black;">
                        <span>免费资源</span>
                    </a>
                    <p >
                        <em>主题：2w</em>
                        <em>贴数：2w</em>
                    </p>
                </div>
                <div class="study_button_right">
                    <a href="#"><img class="xuexijili" src="${pageContext.request.contextPath}/static/img/xuexijingli.jpg"></a>
                    <a href="#" style="text-decoration: none;color: black;">
                        <span>学习经历</span>
                    </a>
                    <p >
                        <em>主题：2w</em>
                        <em>贴数：2w</em>
                    </p>
                </div>
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
