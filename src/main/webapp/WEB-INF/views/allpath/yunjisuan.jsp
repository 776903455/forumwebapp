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
           height: 1000px;
           border-left: 2px solid #5994a4;
       }

       #line_s_1{
           position: relative;
           left: 20px;
           top: 40px;
           width: 0;
           height: 800px;
           border-left: 2px solid #5994a4;
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
        <li><a href="#">云计算学习路线</a></li>
    </ol>
</div>

    <div class="javapath_head">
        <p class="head_left_text">云计算学习路线</p>
        <p class="head_left_text1">云计算（cloud computing）是分布式计算的一种，指的是通过网络“云”将巨大的数据计算处理程序分解成无数个小程序，然后，通过多部服务器组成的系统进行处理和分析这些小程序得到结果并返回给用户。云计算早期，简单地说，就是简单的分布式计算，解决任务分发，并进行计算结果的合并。因而，云计算又称为网格计算</p>
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
            <span>第一阶段 Linux云计算初级</span>

            <div class="line_s" ></div>
            <div  class="path1">
               <div class="path1_1">
                   <ul>
                       <li>Linux云计算网络管理</li>
                       <li>网络历史</li>
                       <li>网络协议</li>
                       <li>进制转换</li>
                       <li>交换机</li>
                       <li>MAC</li>
                       <li>路由器</li>
                       <li>IP</li>
                       <li>公有云网络初识</li>
                       <li>阶段性项目实战</li>


                   </ul>
               </div>
                <div class="path1_2">
                    <ul>
                        <li>Linux云主机系统管理及服务配置实战</li>
                        <li>Linux简介</li>
                        <li>Linux操作系统初识</li>
                        <li>物理服务器部署</li>
                        <li>Aliyun ECS部署</li>
                        <li>Bash Shell基本语法</li>
                        <li>Linux中帮助获得方法</li>
                        <li>inux操作系统文件管理</li>
                        <li>Vi编辑器</li>
                        <li>用户及组管理</li>
                        <li>文件权限</li>
                        <li>进程管理</li>
                        <li>输入输出重定向</li>
                        <li>Bash Shell基础</li>
                        <li>Linux主机管理管理</li>
                        <li>构建受管型网络服务 DHCP</li>
                        <li>建远程主机管理服务 SSHD</li>
                        <li>构建文件共享服务 NFS SAMBA FTP</li>
                        <li>构建网络时间服务 NTP</li>
                        <li>构建域名解析服务 DNS</li>
                        <li>构建基于Apache部署Wordpress博客系统</li>

                    </ul>
                </div>
                <div class="path1_3">
                    <ul>
                        <li>Shell脚本自动化编程</li>
                        <li>Shell编程初识</li>
                        <li>Shell特性</li>
                        <li>Shell脚本规范、调试</li>
                        <li>变量的类型、置换</li>
                        <li>Shell条件测试、循环结构</li>
                        <li>Shell函数 funcation</li>
                        <li>分Expect应用</li>
                        <li>Shell数组 array</li>
                        <li>正则表达式 RE</li>
                        <li>文件操作编程 SED</li>
                        <li>复杂数据处理编程 AWK</li>
                        <li>Shell脚本实现LAMP终级部署</li>
                        <li>Shell脚本实现云主机系统状态收集及分析</li>
                        <li>Shell脚本实现Web访问日志全文分析</li>

                    </ul>
                </div>
                <div class="path1_4">
                    <ul>
                        <li>开源数据库MySql DBA</li>
                        <li>MySQL 数据库介绍</li>
                        <li>MySQL 体系结构介绍</li>
                        <li>数据库基本操作</li>
                        <li>MySQL 表的操作 DDL、DML</li>
                        <li>MySQL 数据库高级应用</li>
                        <li>MySQL 索引的使用</li>
                        <li>MySQL 存储引擎</li>
                        <li>MySQL 安全控制</li>
                        <li>MySQL 数据备份与恢复</li>
                        <li>MySQL 数据库多源复制部署</li>
                        <li>MySQL 读写分离</li>
                        <li>数据库中间件 MyCAT</li>
                        <li>Shell脚本实现Galera MySQL集群部署</li>

                    </ul>
                </div>


            </div>
        </div>
        <div class="stage">
            <div class="cricle_stage">2</div>
            <span>第二阶段  Linux云计算高级</span>
            <div class="line_s"></div>
            <div  class="path1">
                <div class="path1_1">
                    <ul>
                        <li>企业级自动化项目1</li>
                        <li>自动化运维Devops介绍</li>
                        <li>Cobbler实现系统批量部署</li>
                        <li>Tengine构建企业级高性能Web服务器</li>
                        <li>Tengine虚拟主机构建</li>
                        <li>Tengine反向代理模块介绍</li>
                        <li>Tomcat 构建企业级高负载JAVA Web</li>
                        <li>自动化运维工具之Ansible</li>
                        <li>基于Nagios构建企业级监控告警平台</li>
                        <li>自动化运维工具之Ansible</li>
                    </ul>
                </div>
                <div class="path1_2">
                    <ul>
                        <li>企业级自动化项目2</li>
                        <li>构建分布式版本控制系统 Git</li>
                        <li>Shell脚本实现LNMP单、多机部署</li>
                        <li>Tengine动态网站部署</li>
                        <li>Tengine构建高性能反向代理服务器</li>
                        <li>自动化运维工具之SaltStack</li>
                        <li>构建分布式日志分析平台 ELK</li>
                        <li>基于Zabbix构建企业级监控告警平台</li>
                        <li>Aliyun ECS/RDS 运维实战</li>

                    </ul>
                </div>
                <div class="path1_3">
                    <ul>
                        <li>大型网站高并发架构1</li>
                        <li>集群技术 HA LB HPC</li>
                        <li>Tengine构建高并发负载均衡集群</li>
                        <li>KeepAlived构建负载均衡
                            器高可用</li>
                        <li>GlusterFS构建实时
                            分布式存储集群</li>
                        <li>Ceph构建高性能PB级
                            存储集群</li>
                        <li>HTTPS实现线上Web服务器
                            传输安全</li>
                        <li>Web服务器Tengine性能优化</li>
                        <li>MySQL 性能及架构优化</li>

                    </ul>
                </div>
                <div class="path1_4">
                    <ul>
                        <li>大型网站高并发架构2</li>
                        <li>基于LVS构建负载均衡集群</li>
                        <li>HAProxy构建高并发
                            负载均衡集群</li>
                        <li>DRBD构建分布式块
                            存储群集</li>
                        <li>高速缓存服务器集群构建</li>
                        <li>Iptables安全加固
                            及入侵防御</li>
                        <li>Web服务器Tomcat性能优化 </li>
                        <li>阶段性项目实战</li>
                        <li></li>




                    </ul>
                </div>

            </div>
        </div>
        <div class="stage">
            <div class="cricle_stage">3</div>
            <span>第三阶段 Linux云计算运维开发工程师</span>
            <div class="line_s" id="line_s_1"></div>
            <div  class="path1">
            <div class="path1_1">
                <ul>
                    <li>Python Linux自动化</li>
                    <li>python开发环境部署</li>
                    <li>python文件类型、文件操作</li>
                    <li>python运算符及表达式</li>
                    <li>python数据类型、流程控制</li>
                    <li>python 函数、则在表达式</li>
                    <li>python包与模块</li>
                    <li>python异常处理</li>
                    <li>批量主机管理应用系统开发</li>
                    <li>构建信息发布系统 Django</li>
                    <li>批量主机性能监控系统开发</li>
                    <li>网络爬虫工具开发</li>

                </ul>
            </div>
            <div class="path1_2">
                <ul>
                    <li>企业私有云架构</li>
                    <li>虚拟化技术方案介绍</li>
                    <li>KVM虚拟机部署</li>
                    <li>KVM 网络管理、存储配置</li>
                    <li>KVM 虚拟机管理</li>
                    <li>Shell脚本批量部署KVM虚拟机</li>
                    <li>企业级虚拟化技术介绍</li>
                    <li>Python开发KVM虚拟机管理系统</li>
                    <li>云计算技术IaaS PaaS SaaS CaaS</li>
                    <li>OpenStack部署及基本管理</li>
                    <li>OpenStack核心模块解析</li>
                    <li>OpenStack运维</li>
                    <li>Docker部署及基本管理</li>
                    <li>Docker编排部署工具</li>
                    <li>Docker Swarm、kubernetes集群</li>
                    <li>Docker负载均衡和服务发现</li>

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