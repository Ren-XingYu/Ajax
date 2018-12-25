<%--
  Created by IntelliJ IDEA.
  User: RenXingYu
  Date: 2018/12/25
  Time: 15:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Ajax</title>
    <script type="text/javascript">
      function getRequest(){
        var xmlhttp;
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp=new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        return xmlhttp;
      }
      function get() {
        var request=getRequest();
        request.open("GET","AjaxServlet?name=abc",true);
        request.onreadystatechange=function(){
          if (request.readyState==4 && request.status==200) {
              alert(request.responseText);
          }
        }
        request.send();
      }
      function post() {
        var request=getRequest();
        request.open("POST","AjaxServlet",true);
        //如果使用post方式带数据，那么这里要添加头，说明提交的数据类型是一个经过url编码的form表单数据
        //如果不携带数据可以不用添加头,直接request.send()就可以了
        request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        request.onreadystatechange=function(){
          if (request.readyState==4 && request.status==200) {
            alert(request.responseText);
          }
        }
        request.send("name=xyz");
      }
    </script>
  </head>
  <body>
      <h1><a href="" onclick="get()">使用AJax发送get()请求</a></h1>
      <h1><a href="" onclick="post()">使用AJax发送post()请求</a></h1>
      <h1><a href="register.jsp">去注册</a></h1>
  </body>
</html>
