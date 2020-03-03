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
           height: 800px;
           border-left: 2px solid #5994a4;
       }
       #line_s_3{
           position: relative;
           left: 20px;
           top: 40px;
           width: 0;
           height: 1200px;
           border-left: 2px solid #5994a4;
       }
       #line_s_4{
           position: relative;
           left: 20px;
           top: 40px;
           width: 0;
           height: 1200px;
           border-left: 2px solid #5994a4;
       }
       #line_s_5{
           position: relative;
           left: 20px;
           top: 40px;
           width: 0;
           height: 500px;
           border-left: 2px solid #5994a4;
       }

       .path1{
           position: absolute;
           width: 800px;
           height: auto;
           left: 100px;
           top: 50px;
           background: pink;

       }

       .path1_1{
           width: 240px;
           height: 350px;
           background: rgba(255,255,255,0.5);
           left: 10px;
           top: 20px;
           overflow: hidden;
           position: absolute;
           z-index: 6;
       }
       .path1_2{
           width: 240px;
           height: 350px;
           background: rgba(255,255,255,0.5);
           left: 280px;
           top: 20px;
           overflow: hidden;
           position: absolute;
           z-index: 5;
       }
       .path1_3{
           width: 240px;
           height: 350px;
           background: rgba(255,255,255,0.5);
           left: 550px;
           top: 20px;
           overflow: hidden;
           position: absolute;
           z-index: 4;
       }
       .path1_4{
           width: 240px;
           height: 350px;
           background: rgba(255,255,255,0.5);
           left: 10px;
           top: 400px;
           overflow: hidden;
           position: absolute;
           z-index: 3;
       }
       .path1_5{
           width: 240px;
           height: 350px;
           background: rgba(255,255,255,0.5);
           left: 280px;
           top: 400px;
           overflow: hidden;
           position: absolute;
           z-index: 3;
       }
       .path1_6 {
           width: 240px;
           height: 350px;
           background: rgba(255, 255, 255, 0.5);
           left: 550px;
           top: 400px;
           overflow: hidden;
           position: absolute;
           z-index: 3;
       }
       .path1_7 {
           width: 240px;
           height: 350px;
           background: rgba(255, 255, 255, 0.5);
           left: 10px;
           top: 780px;
           overflow: hidden;
           position: absolute;
           z-index: 2;
       }
       .path1_8 {
           width: 240px;
           height: 350px;
           background: rgba(255, 255, 255, 0.5);
           left: 280px;
           top: 780px;
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
        <li><a href="#">PHP学习路线</a></li>
    </ol>
</div>

    <div class="javapath_head">
        <p class="head_left_text">PHP学习路线</p>
        <p class="head_left_text1">PHP 是一种创建动态交互性站点的强有力的服务器端脚本语言。
            PHP 是免费的，并且使用非常广泛。同时，对于像微软 ASP 这样的竞争者来说，PHP 无疑是另一种高效率的选项。</p>
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
            <span>第一阶段 Web前端重点知识</span>

            <div class="line_s" id="line_s_3"></div>
            <div  class="path1">
               <div class="path1_1">
                   <ul>
                       <li>HTML入门</li>
                       <li>HTML简介</li>
                       <li>HTML标签详解</li>
                       <li>字符编码的奥秘</li>
                       <li>HTML5新特性与常用标签</li>
                       <li></li>
                       <li></li>


                   </ul>
               </div>
                <div class="path1_2">
                    <ul>
                        <li>CSS</li>
                        <li>CSS简介</li>
                        <li>CSS的引入方式</li>
                        <li>CSS基本选择器</li>
                        <li>CSS属性</li>
                        <li>盒子模型</li>
                        <li>CSS浮动</li>
                        <li>CSS3新特性与常用属性</li>
                        <li>CSS应用案例</li>

                    </ul>
                </div>
                <div class="path1_3">
                    <ul>
                        <li>JavaScript基础</li>
                        <li>变量</li>
                        <li>数据类型</li>
                        <li>流程控制</li>
                        <li>JavaScript特效</li>
                        <li>DOM操作</li>
                        <li></li>
                    </ul>
                </div>
                <div class="path1_4">
                    <ul>
                        <li>JavaScript核心+高级</li>
                        <li>事件传播</li>
                        <li>事件对象</li>
                        <li>事件委托</li>
                        <li>预解析</li>
                        <li>垃圾回收机制</li>
                        <li>高阶函数</li>
                        <li>闭包、回调函数、作用域链</li>
                        <li>面向对象</li>
                        <li>原型链、原型与冒充继承</li>
                        <li>正则表达式</li>
                        <li>HTTP协议概念、特点、分类</li>
                        <li>HTTP请求、响应、状态码</li>

                    </ul>
                </div>
                <div class="path1_5">
                    <ul>
                        <li>ES6</li>
                        <li>块级作用域</li>
                        <li>数组对象的解构赋值</li>
                        <li>箭头函数</li>
                        <li>属性方法的简洁表示法</li>
                        <li>Class语法</li>
                        <li>ES6模块化机制</li>
                        <li>Typescript</li>
                        <li>Promise</li>

                    </ul>
                </div>
                <div class="path1_7">
                <ul>
                    <li>jQuery</li>
                    <li>jQ选择器</li>
                    <li>jQ文档处理</li>
                    <li>jQ事件编程</li>
                    <li>jQ特效</li>
                    <li>jQ的Ajax</li>
                    <li>jQ中的跨域请求</li>
                    <li>JQ扩展编写</li>
                    <li>实用案例</li>
                </ul>
            </div>
                <div class="path1_6">
                    <ul>
                        <li>NodeJS</li>
                        <li>NodeJS历史、特征与现状</li>
                        <li>同步与异步</li>
                        <li>模块化</li>
                        <li>REPL环境</li>
                        <li>文件操作、网络操作</li>
                        <li>NPM</li>
                        <li>异步编程模型、事件编程模型</li>
                        <li>工具模块</li>
                        <li>Web模块</li>
                        <li>express</li>
                        <li>koa2框架讲解</li>

                    </ul>
                </div>
                <div class="path1_8">
                    <ul>
                        <li>AJAX</li>
                        <li>同步异步概念</li>
                        <li>Aajx兼容性</li>
                        <li>原生Ajax1.0</li>
                        <li>原生Ajax2.0</li>
                        <li>实用案例</li>
                        <li>跨域原理</li>
                        <li>JSONP</li>
                        <li>CORS</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="stage">
            <div class="cricle_stage">2</div>
            <span>第二阶段  PHP核心重点编程</span>
            <div class="line_s" id="line_s_4"></div>
            <div  class="path1">
                <div class="path1_1">
                    <ul>
                        <li>PHP基础</li>
                        <li>WEB程序的访问流程</li>
                        <li>安装LAMP环境</li>
                        <li>配置虚拟主机</li>
                        <li>变量和常量</li>
                        <li>数据类型</li>
                        <li>运算符</li>
                        <li>流程控制</li>
                        <li>函数、变量函数</li>
                        <li>字符串、数组</li>
                        <li>PSR规范</li>
                        <li>表单传值的方式</li>
                        <li>PHP接收数据的三种方式</li>
                        <li>PHP处理复选框数据</li>
                        <li>文件上传、下载</li>
                        <li>PHP模拟HTTP请求</li>
                        <li>时间处理</li>
                    </ul>
                </div>
                <div class="path1_2">
                    <ul>
                        <li>MySQL数据库</li>
                        <li>数据库的安装、配置</li>
                        <li>范式</li>
                        <li>mysql创建、删除、查询库</li>
                        <li>DQL\DML\DDL\DCL</li>
                        <li>视图、存储过程</li>
                        <li>数据库的四大特性</li>
                        <li>数据库连接池</li>
                        <li>数据备份与还原</li>

                    </ul>
                </div>
                <div class="path1_3">
                    <ul>
                        <li>核心编程</li>
                        <li>执行增删改查操作</li>
                        <li>与MySQLi相关的函数</li>
                        <li>MySQLi扩展应用案例</li>
                        <li>会话技术概述</li>
                        <li>Cookie与Session的区别</li>
                        <li>Cookie原理、操作</li>
                        <li>session原理、操作</li>
                        <li>垃圾回收机制</li>
                        <li>GD库概述</li>
                        <li>GD画布实现</li>
                        <li>验证码、缩略图、水印图</li>

                    </ul>
                </div>
                <div class="path1_4">
                    <ul>
                        <li>面向对象</li>
                        <li>面向对象概述</li>
                        <li>面向对象实现</li>
                        <li>封装、继承、多态</li>
                        <li>对象遍历</li>
                        <li>对象序列化</li>
                        <li>命名空间 </li>
                        <li>Trait新特性</li>

                    </ul>
                </div>
                <div class="path1_5">
                    <ul>
                        <li>PDO</li>
                        <li>PDO简介</li>
                        <li>PDO类</li>
                        <li>PDOStatement类</li>
                        <li>PDO预处理</li>
                        <li>PDO事务处理</li>
                        <li>PDO异常处理</li>
                        <li>PDO属性</li>
                        <li>封装PDO类</li>
                    </ul>
                </div>
                <div class="path1_6">
                    <ul>
                        <li>Restful</li>
                        <li>ResTful概述</li>
                        <li>HTTP协议</li>
                        <li>RESTful API设计六要素</li>
                        <li>编写API接口文档</li>
                        <li>编写与测试接口</li>
                        <li></li>

                    </ul>
                </div>
                <div class="path1_7">
                    <ul>
                        <li>Linux</li>
                        <li>Linux系统概述</li>
                        <li>CentOS系统安装</li>
                        <li>Shell指令</li>
                        <li>VIM编辑器</li>
                        <li>文件操作、网络配置</li>
                        <li>SSH、SFTP</li>
                        <li>LAMP本地虚拟机部署</li>
                        <li>域名解析</li>
                        <li>ECS环境配置</li>
                        <li>ECS上搭建真实项目</li>

                    </ul>
                </div>
                <div class="path1_8">
                    <ul>
                        <li>Git</li>
                        <li>命令行</li>
                        <li>Git的基本使用</li>
                        <li>对比文件差异</li>
                        <li>还原、合并</li>
                        <li>回滚操作</li>
                        <li>远端仓库操作</li>
                        <li>使用GitHub创建远端仓库</li>
                        <li>生成ssh key 并添加到GitHub</li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="stage">
            <div class="cricle_stage">3</div>
            <span>第三阶段   移动开发</span>
            <div class="line_s" id="line_s_5"></div>
            <div  class="path1">
            <div class="path1_1">
                <ul>
                    <li>Laravel框架</li>
                    <li>Laravel概述、安装</li>
                    <li>目录结构分析</li>
                    <li>控制器</li>
                    <li>路由、门面、容器</li>
                    <li>服务提供者</li>
                    <li>视图</li>
                    <li>HTTP请求与响应</li>
                    <li>数据库迁移与填充</li>
                    <li>模型、缓存、中间件</li>
                    <li>Laravel实用项</li>

                </ul>
            </div>
            <div class="path1_2">
                <ul>
                    <li>微信小程序</li>
                    <li>微信框架</li>
                    <li>小程序界面设计</li>
                    <li>API接口设计</li>
                    <li>小程序数据绑定</li>
                    <li>小程序性能优化与实践</li>
                    <li>微信小程序实战</li>


                </ul>
            </div>
            <div class="path1_3">
                <ul>
                    <li>Swoole</li>
                    <li>Swoole概述</li>
                    <li>Server\Client</li>
                    <li>Process</li>
                    <li>AsyncIO</li>
                    <li>Memory</li>
                    <li>HttpServer\WebSocket</li>
                    <li>RPC服务Swoole综合案例</li>
                    <li>PHP+Swoole聊天室及微服务</li>

                </ul>
            </div>
            </div>
        </div>
        <div class="stage">
            <div class="cricle_stage">4</div>
            <span>第四阶段   PHP性能优化</span>
            <div class="line_s"></div>
            <div  class="path1">
                <div class="path1_1">
                    <ul>
                        <li>Nginx集群</li>
                        <li>Nginx概述</li>
                        <li>LNMP的安装与配置</li>
                        <li>缓存设置\压缩设置</li>
                        <li>虚拟主机配置</li>
                        <li>日志管理\重写规则</li>
                        <li>负载均衡</li>
                        <li>CDN</li>
                        <li>Nginx集群</li>
                        <li>Nignx+lua</li>
                        <li>Nginx优化</li>
                        <li>公有云实操</li>


                    </ul>
                </div>
                <div class="path1_2">
                    <ul>
                        <li>Memcache</li>
                        <li>大型项目优化概述</li>
                        <li>Memcache软件的安装-序列化</li>
                        <li>Memcache指令详解</li>
                        <li>使用PHP操作Memcache</li>
                        <li>Memcache应用场景</li>
                        <li>分布式部署</li>
                    </ul>
                </div>
                <div class="path1_3">
                    <ul>
                        <li>Redis</li>
                        <li>Redis支持的数据类型</li>
                        <li>持久化功能</li>
                        <li>Redis-哨兵模式和高可用集群</li>
                        <li>PHP操作Redis</li>
                        <li>消息队列</li>
                        <li>redis分布式锁</li>
                        <li>秒杀功能实现</li>


                    </ul>
                </div>
                <div class="path1_4">
                    <ul>
                        <li>MongoDB</li>
                        <li>MongoDB概述</li>
                        <li>MongoDB进阶</li>
                        <li>MongoDB的权限机制</li>
                        <li>使用PHP操作MongoDB</li>
                        <li>MongoDB索引</li>
                        <li>副本集</li>
                        <li>数据备份</li>

                    </ul>
                </div>
                <div class="path1_5">
                    <ul>
                        <li>MySQL优化</li>
                        <li>MySQL优化概述</li>
                        <li>MySQL存储引擎</li>
                        <li>列类型的选择</li>
                        <li>数据库设计三范式与逆范式</li>
                        <li>执行计划</li>
                        <li>索引</li>
                        <li>SQL语句与表的设计</li>
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