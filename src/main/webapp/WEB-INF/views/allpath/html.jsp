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
    <link href="${pageContext.request.contextPath}/static/css/index.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/static/css/allpath.css" rel="stylesheet">
    <title>Title</title>
   <style>

       *{
           margin: 0;
           padding: 0;
       }
       .javapath_head{
           width: 1366px;
           height: 326px;
           position: relative;
       }
       .javapath_head .head_left_text{
           position: absolute;
           font-size: 35px;
           left: 580px;
           top: 30px;
           color: black;
       }

       .javapath_head .head_left_text1 {
           position: absolute;
           font-size: 20px;
           left: 450px;
           top: 100px;
           overflow: hidden;
           width: 550px;
           height: 200px;
       }


       .head_left{
           width: 683px;
           height: 326px;
           background: pink;
           float: left;

       }
       .head_right{
           width: 683px;
           height: 326px;
           background: black;
           float: left;

       }


       .line_s{
           position: relative;
           left: 20px;
           top: 40px;
           width: 0;
           height: 1500px;
           border-left: 2px solid #5994a4;
       }

       .path1_7 {
           width: 240px;
           height: 450px;
           background: rgba(255, 255, 255, 0.5);
           left: 10px;
           top: 950px;
           overflow: hidden;
           position: absolute;
           z-index: 2;
       }
       .path1_8 {
           width: 240px;
           height: 450px;
           background: rgba(255, 255, 255, 0.5);
           left: 280px;
           top: 950px;
           overflow: hidden;
           position: absolute;
           z-index: 2;
       }
       .path1_9 {
           width: 240px;
           height: 450px;
           background: rgba(255, 255, 255, 0.5);
           left: 550px;
           top: 950px;
           overflow: hidden;
           position: absolute;
           z-index: 2;
       }
       .path1_10 {
           width: 240px;
           height: 450px;
           background: rgba(255, 255, 255, 0.5);
           left: 10px;
           top: 1430px;
           overflow: hidden;
           position: absolute;
           z-index: 2;
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
<!--路径导航-->
<div class="path_navigation">
    <ol class="breadcrumb">
        <li><a href="${pageContext.request.contextPath}/toIndex.do">首页</a></li>
        <li><a href="${pageContext.request.contextPath}/toStudyPath.do">学习路线图</a></li>
        <li><a href="#">H5前端/移动端</a></li>
    </ol>
</div>

    <div class="javapath_head">
        <p class="head_left_text">H5前端/移动端</p>
        <p class="head_left_text1">前端即网站前台部分，运行在PC端，移动端等浏览器上展现给用户浏览的网页。随着互联网技术的发展，HTML5，CSS3，前端框架的应用，跨平台响应式网页设计能够适应各种屏幕分辨率，完美的动效设计，给用户带来极高的用户体验</p>
        <div class="head_left">
            <img src="${pageContext.request.contextPath}/static/img/allpath_head_img.jpg">
        </div>
        <div class="head_right">
            <img src="${pageContext.request.contextPath}/static/img/allpath_head_img.jpg">
        </div>
    </div>



    <div class="javapath_center">
        <div class="stage">
            <div class="cricle_stage">1</div>
            <span>H5前端/移动端</span>

            <div class="line_s"></div>
            <div  class="path1">
               <div class="path1_1">
                   <ul>
                       <li>HTML5 + CSS3</li>
                       <li>掌握 HTML5 常用标签</li>
                       <li>掌握 CSS 语法及使用技巧</li>
                       <li>掌握CSS3新增选择器</li>
                       <li>掌握CSS3新增样式属性</li>
                       <li>掌握 DIV+CSS 布局方式</li>
                       <li>掌握常见网页布局技巧</li>
                       <li>掌握企业级电商级网页开发基本的流程</li>
                       <li>语义化、模块化的PC端网页开发</li>
                       <li>掌握 Photoshop 切图以及插件切图</li>
                       <li>熟练使用调试工具进行页面调试</li>
                       <li>掌握基本的动画效果</li>

                   </ul>
               </div>
                <div class="path1_2">
                    <ul>
                        <li>移动Web网页开发</li>
                        <li>掌握CSS32D、3D变换、动画效果</li>
                        <li>了解移动端屏幕、移动端浏览器</li>
                        <li>掌握主流移动端调试方法</li>
                        <li>掌握常用移动端适配方案</li>
                        <li>掌握主流移动端页面开发技术选型</li>
                        <li>掌握CSS预处理器less的使用</li>
                        <li>掌握常用移动端框架使用方法</li>
                        <li>掌握常见移动端页面开发流程与规范</li>
                        <li>掌握响应式布局开发</li>
                        <li>掌握Bootstrap开发响应式页面</li>
                        <li>掌握适配不同终端的移动端页面开发</li>


                    </ul>
                </div>
                <div class="path1_3">
                    <ul>
                        <li>JavaScript网页编程</li>
                        <li>掌握JavaScript基本语法</li>
                        <li>掌握常见JavaScript算法</li>
                        <li>掌握DOM的各种操作</li>
                        <li>熟练使用面向对象思想进行DOM编程</li>
                        <li>掌握JavaScript的高级语法</li>
                        <li>熟练使用jQuery操作DOM</li>
                        <li>熟练使用和编写jQuery插件</li>
                        <li>独立完成电商网站的页面搭建</li>
                        <li>掌握应对业务编程的能力</li>
                        <li>掌握JavaScript常见兼容性方案</li>
                        <li>掌握团队合作开发流程</li>

                    </ul>
                </div>
                <div class="path1_4">
                    <ul>
                        <li>Node.js与AJAX</li>
                        <li>能够建立客户端服务器交互模型</li>
                        <li>能够使用Node.js进行Web服务端开发</li>
                        <li>能够掌握JavaScript异步编程模型</li>
                        <li>能够掌握JavaScript模块化编程方式</li>
                        <li>能够使用Node.js操作MySQL数据库</li>
                        <li>能够理解HTTP协议</li>
                        <li>熟悉原生Ajax请求流程与细节</li>
                        <li>能够独立开发基于后台接口的动态网站</li>
                        <li>能够独立完成企业网站</li>


                    </ul>
                </div>
                <div class="path1_5">
                    <ul>
                        <li>Vue.js项目实战</li>
                        <li>使用Vue技术栈进行项目开发</li>
                        <li>掌握源代码管理工具的使用</li>
                        <li>熟练掌握前后端分离开发模式</li>
                        <li> 掌握使用主流框架开发门户网站</li>
                        <li> 掌握Webpack项目构建配置流程</li>
                        <li> 掌握Web项目的部署与发布模式</li>
                        <li> 掌握常见网站业务模块开发</li>
                        <li> </li>
                    </ul>
                </div>
                <div class="path1_6">
                    <ul>
                        <li>微信小程序</li>
                        <li>掌握小程序的开发基础</li>
                        <li>能够独立开发小程序项目</li>
                        <li>掌握小程序的部署与发布</li>
                        <li>掌握微信支付的使用</li>
                        <li>掌握小程序开发框架的使用</li>
                        <li>掌握第三方AI平台的使用</li>
                        <li></li>
                        <li> </li>


                    </ul>
                </div>

                <div class="path1_7">
                    <ul>
                        <li>React.js项目实战</li>
                        <li>理解React的开发理念</li>
                        <li>理解React的内部原理</li>
                        <li>使用React及其常用组件库进行项目开发</li>
                        <li>掌握React项目中常见问题的解决方案</li>
                        <li>掌握React-Redux进行状态管理</li>
                        <li>掌握声明式编程的思想</li>
                        <li>掌握组件化开发的思想</li>
                        <li>掌握React项目优化、部署</li>


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
                    <img src="${pageContext.request.contextPath}/static/img/button_index_img3.png"/>
                    <span>足不出户学编程</span>
                </div>
                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/static/img/button_index_img1.png"/>
                    <span>学习经验共分享</span>
                </div>
                <div class="col-md-4">
                    <img src="${pageContext.request.contextPath}/static/img/button_index_img2.png"/>
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
                    <img width="200px" height="100px" style="border-radius: 10px;opacity: 0.8;" src="${pageContext.request.contextPath}/static/img/run.jpg"/>
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