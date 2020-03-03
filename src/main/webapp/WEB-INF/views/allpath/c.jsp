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
        <li><a href="#">C/C++学习路线</a></li>
    </ol>
</div>

    <div class="javapath_head">
        <p class="head_left_text">C/C++学习路线</p>
        <p class="head_left_text1">C语言是在70年代初问世的。一九七八年由美国电话电报公司(AT&T)贝尔实验室正式发表了C语言。同时由B.W.Kernighan和D.M.Ritchit合著了著名的“THE C PROGRAMMING LANGUAGE”一书。通常简称为《K&R》，也有人称之为《K&R》标准。但是，在《K&R》中并没有定义一个完整的标准C语言，
            后来由美国国家标准学会在此基础上制定了一个C 语言标准，于一九八三年发表。通常称之为ANSI C</p>
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
            <span>第一阶段 C开发基础</span>

            <div class="line_s"></div>
            <div  class="path1">
               <div class="path1_1">
                   <ul>
                       <li>编程基础</li>
                       <li>常量与变量</li>
                       <li>进制转换</li>
                       <li>运算符</li>
                       <li>条件控制语句</li>
                       <li>J数组与字符串</li>
                       <li></li>
                   </ul>
               </div>
                <div class="path1_2">
                    <ul>
                        <li>函数与指针</li>
                        <li>函数的基本概念</li>
                        <li>字符串操作的常用函数</li>
                        <li>自定义函数</li>
                        <li>指针变量的定义</li>
                        <li>指针基本使用</li>
                        <li>const修饰的指针</li>
                        <li>一级指针与数组名的关系</li>
                        <li>指针法操作数组元素</li>
                        <li>指针作为函数的参数</li>
                        <li>数组作为函数的参数</li>
                        <li>指针做函数的返回值</li>
                        <li>指针处理字符串</li>

                    </ul>
                </div>
                <div class="path1_3">
                    <ul>
                        <li>内存管理</li>
                        <li>局部变量的作用域和生命周期</li>
                        <li>静态局部变量的作用域和生命周期</li>
                        <li>全局变量的作用域和生命周期</li>
                        <li>静态全局变量的作用域和生命周期</li>
                        <li>静态函数和非静态函数的区别</li>
                        <li>内存分区</li>
                        <li>堆区内存的分配(malloc)和释放(free)</li>

                    </ul>
                </div>
                <div class="path1_4">
                    <ul>
                        <li>复合类型</li>
                        <li>结构体的基本用法</li>
                        <li>结构体嵌套指针和数组</li>
                        <li>结构体作为函数参数</li>
                        <li>复合类型的声明与使用</li>
                        <li></li>
                        <li></li>


                    </ul>
                </div>
                <div class="path1_5">
                    <ul>
                        <li>文件操作</li>
                        <li>文件的分类(文本、二进制)</li>
                        <li>文件的打开和关闭</li>
                        <li>文件操作函数</li>
                        <li>文件读写缓冲区的概念</li>
                        <li></li>
                        <li></li>


                    </ul>
                </div>

            </div>
        </div>
        <div class="stage">
            <div class="cricle_stage">2</div>
            <span>第二阶段  C高级编程</span>
            <div class="line_s"></div>
            <div  class="path1">
                <div class="path1_1">
                    <ul>
                        <li>内存分区、函数调用模型</li>
                        <li>数据类型</li>
                        <li>变量的含义</li>
                        <li>函数的调用模型</li>
                        <li>内存操作函数</li>
                        <li>宏定义与预处理</li>
                        <li></li>
                    </ul>
                </div>
                <div class="path1_2">
                    <ul>
                        <li>指针高级</li>
                        <li>指针基本使用</li>
                        <li>指针的步长的概念</li>
                        <li>指针简介赋值</li>
                        <li>指针多级指针做函数参数的特性与使用</li>
                        <li>通过指针操作字符串</li>
                        <li>位的逻辑运算符、移位运算符</li>
                        <li>数组指针与指针数组</li>
                        <li>多维数组做函数参数</li>
                        <li>结构体嵌套一级指针</li>
                        <li>结构体嵌套二级指针</li>
                        <li>浅拷贝深拷贝</li>

                    </ul>
                </div>
                <div class="path1_3">
                    <ul>
                        <li>函数指针与回调函数</li>
                        <li>封装和设计的思想</li>
                        <li>函数指针定义的三种方式</li>
                        <li>回调函数</li>
                        <li></li>
                        <li></li>
                        <li></li>


                    </ul>
                </div>
                <div class="path1_4">
                    <ul>
                        <li>递归函数/链表</li>
                        <li>递归函数的概念</li>
                        <li>递归的使用</li>
                        <li>链表的基本概念</li>
                        <li>单链表的相关操作</li>
                        <li></li>
                        <li> </li>



                    </ul>
                </div>
                <div class="path1_5">
                    <ul>
                        <li>数据结构与算法</li>
                        <li>大O表示法基本概念</li>
                        <li>线性表顺序存储和链式存储概念</li>
                        <li>线性表的顺序存储(数组)</li>
                        <li>线性表的链式存储(链表)</li>
                        <li>队列的顺序与链式存储</li>
                        <li>栈的顺序与链式存储</li>
                        <li>二叉树基本操作</li>
                        <li>常用排序算法</li>

                    </ul>
                </div>
                <div class="path1_6">
                    <ul>
                        <li>接口的封装和设计</li>
                        <li>函数的封装设计</li>
                        <li>解耦合的设计理念</li>
                        <li>模块实现与业务分离的思想</li>
                        <li></li>
                        <li></li>
                        <li></li>


                    </ul>
                </div>
            </div>
        </div>
        <div class="stage">
            <div class="cricle_stage">3</div>
            <span>第三阶段 C++核心编程视</span>
            <div class="line_s" id="line_s_3"></div>
            <div  class="path1">
            <div class="path1_1">
                <ul>
                    <li>C++对C的扩展、引用</li>
                    <li>C++语言的命名空间的使用</li>
                    <li>C++对C的扩展</li>
                    <li>C、C++中const不同之处</li>
                    <li>定义和使用引用类型变量</li>
                    <li></li>
                    <li></li>

                </ul>
            </div>
            <div class="path1_2">
                <ul>
                    <li>函数重载/类与对象</li>
                    <li>了类的的默认参数</li>
                    <li>C++的函数重载</li>
                    <li>类和对象的基本概念</li>
                    <li>类的封装和访问控制权限</li>
                    <li>类和对象进行简单编程</li>
                    <li>类的构造函数、类的析构函数</li>
                    <li>explicit关键字作用</li>
                    <li>类的拷贝构造函数的使用</li>
                    <li>深拷贝和浅拷贝问题</li>
                    <li>多个对象的构造和析构函</li>

                </ul>
            </div>
            <div class="path1_3">
                <ul>
                    <li>对象的动态分配和释放</li>
                    <li>类和对象的动态分配和释放内存</li>
                    <li>静态成员变量和函数的使用</li>
                    <li>this的使用</li>
                    <li>友元函数</li>
                    <li>友元类</li>
                    <li>C++编译器对成员变量和成员方法的处理机制</li>
                    <li></li>
                 >


                </ul>
            </div>
            <div class="path1_4">
                <ul>
                    <li>类的继承和派生、多态</li>
                    <li>继承中的访问控制</li>
                    <li>继承中的构造和析构</li>
                    <li>多继承，virtual继承的基本概念</li>
                    <li>多态的使用</li>
                    <li>区分成员函数的重写和重定义</li>
                    <li>虚函数表指针</li>
                    <li>分步初始化</li>
                    <li>虚函数、纯虚函数</li>
                    <li>抽象类的使用</li>
                    <li>虚析构函数和纯虚析构函数</li>



                </ul>
            </div>
            <div class="path1_5">
                <ul>
                    <li>函数模板、类模板</li>
                    <li>函数模板基本语法</li>
                    <li>函数模板和函数重载的调用规则</li>
                    <li>编译器对模板的编译过程</li>
                    <li>类模板的概念和基本语法</li>
                    <li>继承中的类模板</li>
                    <li>类模板中普通友元函数</li>
                    <li>友元函数模板的处理</li>
                </ul>
            </div>
                <div class="path1_6">
                    <ul>
                        <li>异常、I/O流</li>
                        <li>C++类型转换</li>
                        <li>C++标准异常库</li>
                        <li>异常的抛出与捕获</li>
                        <li>C++标准I/O流</li>
                        <li>C++的文件I/O类的使用</li>
                        <li></li>

                    </ul>
                </div>
                <div class="path1_7">
                    <ul>
                        <li> STL</li>
                        <li>STL容器、迭代器的原理</li>
                        <li>序列式容器vector</li>
                        <li>string、deque</li>
                        <li>堆栈容器stack、quenue</li>
                        <li>向链表容器list</li>
                        <li>关联式容器set、map、multiset</li>
                        <li>对组pair</li>
                        <li>STL算法详解</li>


                    </ul>
                </div>

            </div>
        </div>
        <div class="stage">
            <div class="cricle_stage">4</div>
            <span>第四阶段   Linux </span>
            <div class="line_s" id="line_s_4"></div>
            <div  class="path1">
                <div class="path1_1">
                    <ul>
                        <li>Linux开发与调试工具</li>
                        <li>vim命令模式下操作</li>
                        <li>vim末行模式下操作</li>
                        <li>vim的配置</li>
                        <li>gcc的工作流程和掌握常见参数</li>
                        <li>Linux下的静态库与共享库</li>
                        <li>Makefile，gdb调试</li>
                        <li>pcb和文件描述符,虚拟地址空间</li>
                    </ul>
                </div>
                <div class="path1_2">
                    <ul>
                        <li>系统I/O操作</li>
                        <li>Linux系统IO函数</li>
                        <li>阻塞和非阻塞的概念</li>
                        <li>stat/lstat函数</li>
                        <li>文件属性相关函数</li>
                        <li>链接相关概念及函数</li>
                        <li>目录操作相关概念及函数</li>
                        <li>dup、dup2函数</li>
                        <li>fcntl函数</li>

                    </ul>
                </div>
                <div class="path1_3">
                    <ul>
                        <li>进程与IPC通信</li>
                        <li>进程相关的概念</li>
                        <li>进程操作相关函数</li>
                        <li>孤儿进程</li>
                        <li>僵尸进程</li>
                        <li>进程回收</li>
                        <li>进程间通信</li>



                    </ul>
                </div>
                <div class="path1_4">
                    <ul>
                        <li>线程与并发同步</li>
                        <li>互斥量</li>
                        <li>死锁以及解决方案</li>
                        <li>读写锁</li>
                        <li>条件变量</li>
                        <li>条件变量实现生产消费者模型</li>
                        <li>信号量实现生产消费者模型</li>
                        <li>线程同步解决哲学家就餐问题</li>




                    </ul>
                </div>
                <div class="path1_5">
                    <ul>
                        <li>信号</li>
                        <li>信号中的基本概念</li>
                        <li>使用信号相关的函数</li>
                        <li>信号内核实现原理</li>
                        <li>信号捕捉函数signal、sigaction</li>
                        <li>使用信号完成子进程的回收</li>
                        <li>发送信号时如何进行参数传递</li>
                    </ul>
                </div>

                <div class="path1_6">
                    <ul>
                        <li>网络协议与网络编程</li>
                        <li>OSI七层模型结构</li>
                        <li>TCP/IP 4层模型结构</li>
                        <li>B/S、C/S优缺点对比</li>
                        <li>常见网络协议格式</li>
                        <li>套接字；网络字节序</li>
                        <li>IP地址转换函数</li>
                        <li>编写TCP的C/S网络程序</li>
                        <li>UDP通信机制与模型</li>
                        <li>三次握手建立连接过程</li>
                        <li>四次握手断开连接过程</li>
                        <li>滑动窗口概念</li>
                        <li>TCP状态转换</li>
                        <li>2MSL概念</li>
                        <li>端口复用方法；半关闭</li>

                    </ul>
                </div>
                <div class="path1_7">
                    <ul>
                        <li>高并发服务器开发</li>
                        <li>多路IO转接模型</li>
                        <li>select函数,fd_set相关操作函数</li>
                        <li>select多路IO转接模型poll操作函数</li>
                        <li>epoll多路IO模型</li>
                        <li>线程池模型的设计思想,</li>
                        <li>libevent库,epoll反应堆模型</li>
                        <li>使用BufferEvent、evBuffer</li>
                        <li>多线程并发服务器、多进程并发服务器</li>
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