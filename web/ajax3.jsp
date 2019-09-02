<%--
  Created by IntelliJ IDEA.
  User: sixia
  Date: 2019/8/29
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $(function () {
           $(":button").click(function () {
               // alert("ok");
               var user={
                   "username":"alice",
                   age:20
               };
               $.ajax({
                  type:"POST",
                   url:"${pageContext.request.contextPath}/ajax3Servlet",
                   data:$("form[name=myform]").serialize(),
                   success:function (response) {
                       // alert(response);

                   }
               });
           });
        });
    </script>
</head>
<body>
<form name="myform">
    用户名：<input type="text" name="username">
    年龄：<input type="text" name="age">
    <input type="button" value="测试">
</form>
</body>
</html>
