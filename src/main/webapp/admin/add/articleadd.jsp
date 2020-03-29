<%@ page import="java.net.URLDecoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.js" type="text/javascript"></script>
    <!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.js" type="text/javascript"></script>
    <!--引入表单校验插件-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/messages_zh.js" ></script>
</head>
<body>
<div class="container" >
    <form id="artform" action="${pageContext.request.contextPath}/addArticle.do">


        <div class="right" style="float: left;width: 400px;height: 300px">
            <p style="font-size: 20px">帖子内容</p>
            <textarea name="atxte" style="margin-top: 5px" id="summernote">
                 </textarea>
        </div>


        <div class="left" style="float: left;width: 480px;margin-top: 30px">
            <table class="table table-bordered">
                <tr>
                    <td style="font-size: 20px" colspan="3">添加帖子</td>
                </tr>
                <tr>
                    <td>帖子名</td>
                    <td colspan="2"><input type="text" name="aname"></td>
                </tr>
                <tr>
                    <td>消耗书币</td>
                    <td colspan="2"><input type="text" name="amoney"></td>

                </tr>
                <tr>
                    <td>发帖id</td>
                    <td colspan="2">
                        <input type="text" name="admin_id">
                    </td>
                </tr>
                <tr>
                    <td>主题id</td>
                    <td colspan="2">
                        <select name="cid" id="select_id" >
                            <option value="0">所属一级分类</option>
                            <option value="1">免费资源</option>
                            <option value="2">学习路线</option>
                            <option value="3">技术交流</option>
                            <option value="4">礼品兑换</option>
                            <option value="5">最新活动</option>
                        </select>
                        <select id="select_csid" name="csid">


                        </select>
                    </td>

                </tr>
                <tr>
                    <td>资源url</td>
                    <td><input type="text" name="resourseurl" placeholder="链接"></td>
                    <td><input type="text" name="tqm" placeholder="提取码"></td>
                </tr>
                <tr>
                    <td colspan="3"><input style="margin-left: 350px" type="submit" class="btn btn-success" value="添加"></td>
                </tr>
            </table>
        </div>



    </form>
</div>
</body>
<script>



    $(function () {
        $('#summernote').summernote({
            placeholder: '输入内容',
            width:400,
            height:300
        });


        $("#select_id").change(function () {
            $("#select_csid").empty();
           var text = $("select[name='cid'] option:selected").val();
            $.ajax({
                type:"post",
                url:"${pageContext.request.contextPath}/getCategorySecondByCid.do",
                data:{cid:text},
                dataType:"json",
                scriptCharset: 'utf-8',
                success:function ( msg) {

                       for(var i=0;i<msg.length;i++){
                           var options = $("<option></option>");
                           var op =$(options).text(msg[i].csname).attr("value",msg[i].csid);

                           $("#select_csid").append(op);

                       }
                }
            })

        });


        $(function () {
            $("#artform").validate({
                rules:{
                    aname:{required:true},
                    csid:{required:true},
                },
                messages:{
                    aname:{required:"不能为空"},
                    csid:{required:"不能为空"},
                }
            })
        })


    })



</script>

</html>