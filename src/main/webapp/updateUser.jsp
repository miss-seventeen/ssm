<%--
  Created by IntelliJ IDEA.
  User: 2022
  Date: 2022/6/4
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

  <form action="updateUser" method="post">
    <input type="hidden" name="id" value="${user.id}"/>

    用户名：<input type="text" name="username" value="${user.username}"><br/>
    昵称：  <input type="text" name="nickname" value="${user.nickname}"><br/>
    密码：  <input type="password" name="password" value="${user.password}"><br/>
    年龄：  <input type="text" name="age" value="${user.age}"><br/>
    <input type="submit" value="修改">
  </form>



</body>
</html>
