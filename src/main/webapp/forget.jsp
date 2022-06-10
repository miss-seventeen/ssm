<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2022/6/10
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>忘记密码</title>
</head>
<body>
<form action="forget" method="post">
    用户名：<input type="text" name="username"  placeholder="请输入..."/><br><br>
    昵称：&nbsp&nbsp&nbsp&nbsp<input type="text" name="nickname"  placeholder="请输入..."/><br><br>
    新密码：<input type="password" name="password"  placeholder="请输入..."/><br><br>
    <input type="submit" value="提交">
</form>
</body>
</html>
