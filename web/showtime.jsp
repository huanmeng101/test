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
    <script>
        function show() {
            //使用AJAX发送一个请求，获得服务器端的时间，将这个时间放入到输入框中
            //创建XMLHttpRequest对象
            var xhr=new XMLHttpRequest();
            //注册onreadystatechange事件
            xhr.onreadystatechange=function (ev) {
                if (xhr.readyState){
                    // alert(xhr.responseText);
                    document.getElementsByName("timer")[0].value=xhr.responseText;
                }
            }
            xhr.open("GET","/ajax_json/showTimeServlet",true);
            xhr.send(null);
        }
    </script>
</head>
<body>
用户：<input type="text" onkeyup="show()"/>&nbsp;&nbsp;时间：<input type="text" name="timer"/>
</body>
</html>
