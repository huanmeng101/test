<%--
  Created by IntelliJ IDEA.
  User: sixia
  Date: 2019/8/29
  Time: 11:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $().ready(function () {
            $(":input[name=username]").keyup(function () {
               $.ajax({
                   type:"GET",
                   url:"/ajax_json/showTimeServlet",
                   success:function (data) {
                       // document.getElementsByName("timer")[0].value=data.responseText;
                       $(":input[name=timer]").val(data)
                   }
               })
            });
        });
            //使用AJAX发送一个请求，获得服务器端的时间，将这个时间放入到输入框中
            //创建XMLHttpRequest对象

            //注册onreadystatechange事件

    </script>
</head>
<body>
用户：<input type="text" name="username"/>&nbsp;&nbsp;时间：<input type="text" name="timer"/>
</body>
</html>
