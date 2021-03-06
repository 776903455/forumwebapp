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
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js" type="text/javascript"></script>
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/static/css/menu.css" rel="stylesheet" />
    <title>IT在线学习平台</title>

    <style>
        *{margin: 0;
            padding: 0;}
        .scoreInfo{
            display: inline-block;
            width: 300px;
            height: 50px;
            position: absolute;
            top: 250px;
            left: 500px;
            border-radius: 5px;
            background: gold;
            text-align: center;
            color: white;
            font-size: 20px;
            opacity: 0;
        }
        .scoreInfo span{
            margin-top: 20px;
        }
        .u1_title{
            padding-top: 50px;
            height: 250px;
            list-style: none;
            border-right:1px gray solid ;
        }
        .u1_title li{
            cursor: pointer;
            padding-top: 5px;
        }
        .u1_title li:hover{
            background: rgba(0,0,0,0.05);
        }
        .modal-body	.row{
            height: 250px;
            border: 1px gray solid ;
            position: relative;
        }
        .skill{
            width: 200px;
            position: absolute;
            /*opacity: 0;*/
            display: none;
            height: 250px;
            list-style: none;
            border-right:1px gray solid ;
        }
        .free{
            width: 200px;
            height: 250px;
            position: absolute;
          /*  opacity: 0;*/
            display: block;
            list-style: none;
            border-right:1px gray solid ;
        }
        .path{
            width: 200px;
            position: absolute;
             display: none;
            height: 250px;
            list-style: none;
            border-right:1px gray solid ;
        }
        .path li{
            cursor: pointer;
            padding-top: 5px;
        }

        .skill li{
            cursor: pointer;
            padding-top: 5px;
        }
        .free li{
            cursor: pointer;
            padding-top: 5px;
        }
        .head1 .container .row .search_img{
            width: 25px;
            height: 25px;
            position: absolute;
            top: 25px;
            right: 20px;
        }
/*----------------------*/
        .hot_top_buttom_top{
            width: 1350px;
            height: 200px;
            overflow: hidden;
            position: relative;
        }
        .td{
            width: 154px;
            height: 9px;
            border: 1px solid rgb(194,160,96);
            position: absolute;
            top: -5px;
            left: 0;
            background-color: pink;
        }
        .gd{
            width: 1000px;
            height: 5px;
            background: #cccccc;
            position: relative;
            margin-top: 50px;
        }
        .hot_top_buttom_top  .clearfix{
            width: 5000px;
            position: absolute;
            top: 0;
            left: 0;
            transition: all .5s ease;
        }
        .clearfix  li{
            width: 430px;
            height: 230px;
            margin-right: 20px;
            float: left;
            list-style: none;
        }
        .clearfix img{
            width: 400px;
            height: 196px;
        }

        .clearfix img:hover{
            width: 412px;
            height: 200px;
        }
        .clearfix:after{
            visibility: hidden;
            clear: both;
            display: block;
            content: ".";
            height: 0;
        }
        .clearfix{
            *zoom: 1;
        }


    </style>
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
                    <li><a href="${pageContext.request.contextPath}/findHotArtByCsid.do?c1=1&c2=9&c3=20">java</a></li>
                    <li><a href="${pageContext.request.contextPath}/findHotArtByCsid.do?c1=6&c2=14&c3=25">大数据</a></li>
                    <li><a href="${pageContext.request.contextPath}/findHotArtByCsid.do?c1=4&c2=12&c3=23">PHP/WEB前端</a></li>
                    <li><a href="${pageContext.request.contextPath}/findHotArtByCsid.do?c1=2&c2=10&c3=21">Phthon</a></li>
                    <li><a href="${pageContext.request.contextPath}/findHotArtByCsid.do?c1=3&c2=11&c3=22">C/C++</a></li>
                    <li><a href="${pageContext.request.contextPath}/findHotArtByCsid.do?c1=7&c2=15&c3=26">Android</a></li>
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
                            <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=72">   <img src="${pageContext.request.contextPath}/static/img/lunbotu1.jpg" ></a>
                        </div>
                        <div class="item">
                            <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=73"> <img src="${pageContext.request.contextPath}/static/img/lunbotu2.jpg" ></a>
                        </div>
                        <div class="item">
                            <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=74">   <img src="${pageContext.request.contextPath}/static/img/lunbotu3.jpg" ></a>
                        </div>
                        <div class="item">
                            <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=75"> <img src="${pageContext.request.contextPath}/static/img/lunbotu4.jpg" ></a>
                        </div>
                        <div class="item">
                            <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=76"> <img src="${pageContext.request.contextPath}/static/img/lunbotu5.jpg" ></a>
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
                    <button type="button" class="btn btn-info"  id="b2"
                            style="width: 120px;height: 50px; border-radius:10px;font-size: 20px;" >发帖</button>
                    <button type="button" class="btn btn-warning" id="qiandao"
                            style="width: 120px;height: 50px; border-radius:10px;font-size: 20px;margin-left: 15px;"></button>
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
                <%--<span><a href=""><img src="${pageContext.request.contextPath}/static/img/hot_img1.jpg"></a></span>
                <span><a href=""><img src="${pageContext.request.contextPath}/static/img/hot_img2.jpg"></a></span>
                <span><a href=""><img src="${pageContext.request.contextPath}/static/img/hot_img3.jpg"></a></span>--%>

                        <ul class="clearfix" style="margin-left: 10px">
                            <li>
                                <div class="imgs">
                                   <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=80"><img src="${pageContext.request.contextPath}/static/img/hot_img1.jpg"/></a>
                                </div>
                            </li>

                            <li>
                                <div class="imgs">
                                    <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=81"> <img src="${pageContext.request.contextPath}/static/img/hot_img2.jpg"/></a>
                                </div>
                            </li>
                            <li>
                                <div class="imgs">
                                    <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=82"> <img src="${pageContext.request.contextPath}/static/img/hot_img3.jpg"/></a>
                                </div>
                            </li>
                            <li>
                                <div class="imgs">
                                    <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=83"> <img src="${pageContext.request.contextPath}/static/img/hot_img4.jpg"/></a>
                                </div>
                            </li>
                            <li>
                                <div class="imgs">
                                    <a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=84"> <img src="${pageContext.request.contextPath}/static/img/hot_img5.jpg"/></a>
                                </div>
                            </li>
                        </ul>
            </div>

            <div class="gd">
                <div class="td"></div>
            </div>

            <div class="hot_top_buttom_buttom">
                <div class="hot_top_buttom_buttom_left">
                    <ul>
                        <c:forEach items="${articles4}" var="article4">
                            <li style="border-bottom: 1px grey dashed;"><a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=${article4.aid}">${article4.aname}</a></li>
                        </c:forEach>

                    </ul>
                </div>
                <div class="hot_top_buttom_buttom_rigth">
                    <ul>
                        <c:forEach items="${articles5}" var="article5">
                            <li style="border-bottom: 1px grey dashed;"><a href="${pageContext.request.contextPath}/selectArtByAid.do?aid=${article5.aid}">${article5.aname}</a></li>
                        </c:forEach>
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
                    <a href="${pageContext.request.contextPath}/toSkillExchange.do?cid=3"><img class="jishufenxiang" src="${pageContext.request.contextPath}/static/img/jishifenxiang.jpg"></a>
                    <a href="${pageContext.request.contextPath}/toSkillExchange.do?cid=3" style="text-decoration: none;color: black;">
                        <span>技术分享</span>
                    </a>
                    <p >
                        <em>主题：25</em>
                        <em>贴数：2w</em>
                    </p>
                </div>
                <div class="study_top_right">
                    <a href="${pageContext.request.contextPath}/toindexpath.do?cid=2"><img class="xuexiluxian" src="${pageContext.request.contextPath}/static/img/xuexiluxian.jpg"></a>
                    <a href="${pageContext.request.contextPath}/toindexpath.do?cid=2" style="text-decoration: none;color: black;">
                        <span>学习路线</span>
                    </a>
                    <p >
                        <em>主题：25</em>
                        <em>贴数：2w</em>
                    </p>
                </div>
            </div>

            <div class="study_resource_buttom_buttom">
                <div class="study_button_left">
                    <a href="${pageContext.request.contextPath}/toFreeSource.do?cid=1"><img class="mianfeiziyuan" src="${pageContext.request.contextPath}/static/img/mianfeiziyuan.jpg"></a>
                    <a href="${pageContext.request.contextPath}/toFreeSource.do?cid=1" style="text-decoration: none;color: black;">
                        <span>免费资源</span>
                    </a>
                    <p >
                        <em>主题：25</em>
                        <em>贴数：2w</em>
                    </p>
                </div>
                <div class="study_button_right">
                    <a href="#"><img class="xuexijili" src="${pageContext.request.contextPath}/static/img/xuexijingli.jpg"></a>
                    <a href="#" style="text-decoration: none;color: black;">
                        <span>学习经历</span>
                    </a>
                    <p >
                        <em>主题：25</em>
                        <em>贴数：2w</em>
                    </p>
                </div>
            </div>


        </div>
    </div>
</div>

<%--弹出获得的金币--%>
<span class="scoreInfo"><span>本次签到获得<em id="em_score"></em>枚金币</span></span>

<%--当游客点击发帖按钮时，提示他先登录--%>
<p class="login_tips" style="opacity: 0;position: absolute;width: 500px;
    height: 50px;text-align: center;top: 200px;left: 350px;background: orange;
    font-size: 18px;color: white;padding-top: 15px;border-radius: 5px">
    游客请先登录之后才能发帖！
</p>
<%--当游客点击发签到按钮时，提示他先登录--%>
<p class="qiandao_tips" style="opacity: 0;position: absolute;width: 500px;
    height: 50px;text-align: center;top: 200px;left: 350px;background: orange;
    font-size: 18px;color: white;padding-top: 15px;border-radius: 5px">
    游客登录之后才能签到！
</p>
<%--显示游客签到获取积分--%>
<p class="qiandao_getscore" style="opacity: 0;position: absolute;width: 500px;
    height: 50px;text-align: center;top: 200px;left: 350px;background: orange;
    font-size: 18px;color: white;padding-top: 15px;border-radius: 5px">
    恭喜你，获得<span id="qd_getscore"></span>枚金币！
</p>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    主题选择
                </h4>

                <!--<span class="span1"></span> / <span class="span2"></span>-->
                <span class="span3">
					<em class="span1"></em>/<em class="span2"></em>
				</span>
            </div>


            <div class="modal-body">
                <div class="row">
                    <div class="col-md-3">
                        <ul class="u1_title">
                            <li class="study_free">免费资源</li>
                            <li class="study_path">学习路线</li>
                            <li class="study_skill">技术交流</li>
                        </ul>
                    </div>
                    <div class="col-md-5 ">

                        <!--<span></span>-->
                        <ul class="skill">
                            <li>java技术交流</li>
                            <li>Python+人工智能技术交流</li>
                            <li>c/c++技术交流</li>
                            <li>PHP+H5技术交流</li>
                            <li>UI/UE设计技术交流</li>
                            <li>大数据技术交流</li>
                            <li>新媒体+Android技术交流</li>
                            <li>Linux云计算技术交流</li>
                        </ul>

                        <ul class="free">
                            <li>javaEE资源</li>
                            <li>Python资源</li>
                            <li>C/C++资源</li>
                            <li>前端资源</li>
                            <li>Ul/UE资源</li>
                            <li>大数据资源</li>
                            <li>Android资源</li>
                            <li>学习经历资源</li>
                        </ul>


                        <ul class="path">
                            <li>java学习路径</li>
                            <li>Python学习路径</li>
                            <li>C/C++学习路径</li>
                            <li>前端学习路径</li>
                            <li>Ul/UE学习路径</li>
                            <li>大数据学习路径</li>
                            <li>Android学习路径</li>
                        </ul>
                    </div>


                    <div class="col-md-4">

                    </div>
                </div>

            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" id="guanbi_btn">关闭
                </button>
                <button type="button" class="btn btn-primary" id="faitie_btn">
                    发帖
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


<%@include file="buttom.jsp"%>



</body>

<script src="${pageContext.request.contextPath}/static/js/menu.js"></script>
<script>


    var scoreInfo = document.querySelector(".scoreInfo");
    var b2 = document.querySelector("#b2");
    var qiandao = document.querySelector("#qiandao");
    var qdgetscore = document.querySelector("#qd_getscore");
    var free=document.querySelectorAll(".free li");
    var skill=document.querySelectorAll(".skill li");
    var path=document.querySelectorAll(".path li");
    var ul_title=document.querySelectorAll(".u1_title li");
    var span1=document.querySelector(".span1");
    var span2=document.querySelector(".span2");
    var span3=document.querySelector(".span3");
    var faitiebtn=document.querySelector("#faitie_btn");
    var guanbibtn=document.querySelector("#guanbi_btn");
    var logintips = document.querySelector(".login_tips");
    var qiandaotips = document.querySelector(".qiandao_tips");
    var qiandaogetscore = document.querySelector(".qiandao_getscore");
    b2.onclick=function () {
        if(${sessionScope.user==null}){
            logintips.style.opacity="1";
            setInterval(function () {
                window.location.href="${pageContext.request.contextPath}/toLogin.do";
                logintips.style.opacity="0";
            },2000);
        }else {
            /*显示模态框*/
            $('#myModal').modal("show");
        }
    }
    if(${sessionScope.user==null}){
        qiandao.innerHTML="签到";
    }else {
        if(${sessionScope.user.qdstatus==0}){
            qiandao.innerHTML="签到";
        }else {
            qiandao.innerHTML="已签到";
        }
    }
    /*d点击签到按钮执行的事件*/
    qiandao.onclick=function () {
        if(${sessionScope.user!=null}){
            if(qiandao.innerHTML=="签到"){
                window.location.href="${pageContext.request.contextPath}/getScore.do?username=${sessionScope.user.username}&score=${sessionScope.user.score}&qdstatus=${sessionScope.user.qdstatus}";
            }else {
                qiandao.style.cursor="not-allowed";
                alert("今天已经签到，请明天继续！")
            }
        }else {
            qiandaotips.style.opacity="1";
            setInterval(function () {
                window.location.href="${pageContext.request.contextPath}/toLogin.do";
                qiandaotips.style.opacity="0";
            },2000);
        }
    };
    /*弹出用户获取金币功能*/
    if(${scoreInfo!=null}){
        qdgetscore.innerHTML=${scoreInfo}
            qiandaogetscore.style.opacity="1";
        setInterval(function () {
            qiandaogetscore.style.opacity="0";
        },2000);
    }

    for(var j=0;j<ul_title.length;j++) {
        ul_title[j].onclick=function(){
            span1.innerHTML=this.innerHTML;
            span2.innerHTML="";
        }
    }
    /*点击对应的li使其背景颜色改变*/
    for(var j=0;j<free.length;j++) {
        free[j].onclick=function(){
            for(var i=0;i<free.length;i++){
                free[i].style.background="rgba(0,0,0,0)";
                span2.innerHTML=this.innerHTML;
            }
            this.style.background="rgba(0,0,0,0.05)";
        }
    }
    for(var j=0;j<skill.length;j++) {
        skill[j].onclick=function(){
            for(var i=0;i<skill.length;i++){
                skill[i].style.background="rgba(0,0,0,0)";
                span2.innerHTML=this.innerHTML;
            }
            this.style.background="rgba(0,0,0,0.05)";
        }
    }
    for(var j=0;j<path.length;j++) {
        path[j].onclick=function(){
            for(var i=0;i<path.length;i++){
                path[i].style.background="rgba(0,0,0,0)";
                span2.innerHTML=this.innerHTML;
            }
            this.style.background="rgba(0,0,0,0.05)";
        }
    }
    /*点击发帖按钮将选择的主题文本传到发帖界面*/
    faitiebtn.onclick=function(){
        var text=(span3.innerText);
        if(text.length<9){
            alert("请选择正确的主题");
        }else{
            window.location.href="${pageContext.request.contextPath}/tofatiejiemian.do?uid=${sessionScope.user.uid}&text="+text;
        }
    }
    /*点击模态框关闭按钮，清空所选的主题*/
    guanbibtn.onclick=function(){
        span1.innerText="";
        span2.innerText="";
    }
    /*切换主题*/
    $(document).ready(function(){
        $(".study_skill").click(function(){
            $(".skill").css("display","block");
            $(".free").css("display","none");
            $(".path").css("display","none")

        });
        $(".study_free").click(function(){
            $(".skill").css("display","none");
            $(".free").css("display","block");
            $(".path").css("display","none")

        });
        $(".study_path").click(function () {
            $(".path").css("display","block");
            $(".skill").css("display","none");
            $(".free").css("display","none");
        });

        $(".faitie_span").click(function () {
            $('#myModal').modal("show");
        });
    });

    /*获取box*/
    var box=document.querySelector(".hot_top_buttom_top");
    /*获取ul*/
    var ul=document.querySelector(".clearfix");
    var td=document.querySelector(".td");
    var ulLeft=ul.offsetLeft;
    var tdLeft=td.offsetLeft;

    $(".hot_top_buttom_top").mouseover(function (event) {
        if( event.pageX>600){
            if(ulLeft!==-900) {
                console.log(ulLeft);
                ulLeft = ulLeft - 50;
                $(".clearfix").css("left", ulLeft + "px");
                tdLeft = tdLeft + 50;
                $(".td").css("left", tdLeft + "px");
            }
        }
        if(event.pageX<600){
            console.log(ulLeft);
            if(ulLeft!==0){
                ulLeft = ulLeft + 50;
                $(".clearfix").css("left", ulLeft + "px");
                tdLeft = tdLeft - 50;
                $(".td").css("left", tdLeft + "px");
            }

        }

    })

</script>
</html>