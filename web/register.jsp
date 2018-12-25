<%--
  Created by IntelliJ IDEA.
  User: RenXingYu
  Date: 2018/12/25
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <script src="js/register.js"></script>
</head>
<body>
    <form action="RegisterServlet" method="post">
        <table>
            <tr>
                <td>用户名:</td>
                <td><input type="text" id="username" name="username" onblur="checkUsername()"></td>
                <td><span id="username_span"></span></td>
            </tr>
            <tr>
                <td>密    码:</td>
                <td><input type="text" name="password"></td>
                <td><span name="password_span"></span></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="注册">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
