<%--
  Created by IntelliJ IDEA.
  User: sixia
  Date: 2019/8/29
  Time: 13:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script src="js/jquery-3.0.0.min.js"></script>
<script>
    $().ready(function () {
        $(":button").click(function () {
            $.ajax({
                type:"GET",
                url:"/ajax_json/ajax1Servlet?id=1001",
                success:function (response) {
                    alert(response);
                }
            });
        });
   // var obj={"name:":"tom"}

    });
</script>
<body>
<input type="button" value="提交">
</body>
</html>
