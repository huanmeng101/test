<%--
  Created by IntelliJ IDEA.
  User: sixia
  Date: 2019/8/29
  Time: 15:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js">
    </script>
    <script>
        $(function () {
            $(":text[name=username]").keyup(function () {
                // alert("ok"+this.value+","+$(this).val());
                $.ajax({
                    type:"POST",
                    usl:"${pageContext.request.contextPath}/sugServlet",
                    data:"username"+arr,
                    success:function (response) {
                        var arr=response.split(",");
                        $("select option").remove();
                        $.each(arr,function (index,ele) {
                            $("select").append("<option>"+ele+"<option>");

                        });
                        // alert(response);
                    }
                });

            });
        });
    </script>
</head>
<body>
请输入：<input type="text" name="username">
<select>
    <option>1</option>
</select>
</body>
</html>
