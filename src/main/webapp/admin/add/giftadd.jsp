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
    <!--引入表单校验插件-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/messages_zh.js" ></script>
</head>
<body>
        <div class="container" >
            <form id="addgiftform" action="${pageContext.request.contextPath}/giftAdd.do" method="post" enctype="multipart/form-data">


                 <table style="margin-top: 50px;margin-left: 300px" width="500px" class="table table-bordered">
                     <tr>
                         <td style="font-size: 20px" colspan="3">添加商品</td>
                     </tr>
                     <tr>
                         <td>商品名</td>
                         <td colspan="2"><input type="text" name="gname"></td>
                     </tr>
                     <tr>
                         <td>消耗书币</td>
                         <td colspan="2"> <input type="text" name="gmoney"></td>

                     </tr>
                     <tr>
                         <td>市场价格</td>
                         <td colspan="2">
                             <input type="text" name="marketPrice">
                         </td>
                     </tr>

                     <tr>
                         <td>是否热门</td>
                         <td colspan="2">
                             <select name="isHot">
                                 <option value="-1">请选择</option>
                                 <option value="1">是</option>
                                 <option value="0">否</option>
                             </select>
                         </td>
                     </tr>

                     <tr>
                         <td>添加图片</td>
                         <td colspan="2">
                             <input type="file" name="addgimage">
                         </td>
                     </tr>

                     <tr>
                         <td>描述</td>
                         <td colspan="2">
                             <textarea cols="40" rows="6" name="gdesc"></textarea>
                         </td>

                     </tr>
                     <tr>
                         <td colspan="3"><input style="margin-left: 350px" type="submit" class="btn btn-success" value="添加"></td>
                     </tr>
                 </table>
            </form>
        </div>
</body>
        <script>

                $("#addgiftform").validate({

                    rules:{
                        gname:{required:true},
                        marketPrice:{required:true},
                        addgimage:{required:true},
                        gdesc:{required:true}

                    },
                    messages:{
                        gname:{required:'不能为空'},
                        marketPrice:{required:'不能为空'},
                        addgimage:{required:'不能为空'},
                        gdesc:{required:'不能为空'}
                    }
            })
        </script>
</html>