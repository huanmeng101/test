<%--
  Created by IntelliJ IDEA.
  User: sixia
  Date: 2019/8/30
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $(function () {
            $(":input").click(function () {
                // alert("ok");
                $.ajax({
                    type:"POST",
                    url:"${pageContext.request.contextPath}/jsonDemoServlet",
                    dataType:"json",
                    success:function (response) {
                        //数组，对象，集合
                        // alert(response[1]+","+response.length);
                        // alert(response.id+","+response.name+","+response.age);
                        alert(response[1].id+","+response[1].name+","+response[2].age)

                    }
                })

            })
        })
    </script>
</head>
<body>
<input type="button"value="测试"/>
</body>
</html>
<script>
    var arr=["jsp","asp","php"];
    var str=JSON.stringify(arr);
    //转换成字符串
    console.log("str="+str+","+typeof(arr));
    var str1='["JSP","ASP","PHP",123]';
    //将符合接送格式的字符串转换为数组
    var arr1=JSON.parse(str1);
    console.log("arr1="+arr1+","+typeof(arr1));
    var obj={name:"tom",age:20};
    str2=JSON.stringify(obj);
    console.log("str2"+str2+","+typeof (str2));
    str3='{"name":"alice","age":18}';
    obj=JSON.parse(str3);
    console.log(obj.name+","+obj.age);
</script>