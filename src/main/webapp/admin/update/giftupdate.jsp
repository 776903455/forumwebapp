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
</head>
<body>
        <div class="container" >
            <form action="${pageContext.request.contextPath}/updateGift.do" method="post" enctype="multipart/form-data">

                <input type="hidden" name="gid" value="${gift.gid}">
                 <table style="margin-top: 50px;margin-left: 300px" width="500px" class="table table-bordered">
                     <tr>
                         <td style="font-size: 20px" colspan="3">修改商品</td>
                     </tr>
                     <tr>
                         <td>商品名</td>
                         <td colspan="2"><input type="text" name="gname" value="${gift.gname}"></td>
                     </tr>
                     <tr>
                         <td>消耗书币</td>
                         <td colspan="2"> <input type="text" name="gmoney" value="${gift.gmoney}"></td>

                     </tr>
                     <tr>
                         <td>市场价格</td>
                         <td colspan="2">
                             <input type="text" name="marketPrice" value="${gift.marketPrice}">
                         </td>
                     </tr>
                     <tr>
                         <td>修改图片</td>
                         <td colspan="2">
                             <input type="file" name="updategimage">
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
                         <td>描述</td>
                         <td colspan="2">
                             <textarea cols="40" rows="6" name="gdesc"></textarea>
                         </td>

                     </tr>
                     <tr>
                         <td colspan="3"><input style="margin-left: 350px" type="submit" class="btn btn-success" value="修改"></td>
                     </tr>
                 </table>


            </form>
        </div>
</body>


</html>