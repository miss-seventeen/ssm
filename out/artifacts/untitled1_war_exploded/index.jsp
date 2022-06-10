<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>登录页面</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
<h1>欢迎您</h1>
<form action="login" method="post">
    用户名：<input type="text" name="username" placeholder="请输入用户名"/><br/>
    <br/>
    密码：&nbsp&nbsp&nbsp<input type="password" name="password" placeholder="请输入密码"/><br/>
    <br/>
    &nbsp&nbsp<input type="submit" value="提交">&nbsp&nbsp&nbsp
    <input type="button" onclick="window.open('addUser.jsp')" value="注册">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    <input type="button" onclick="window.open('forget.jsp')" value="忘记密码" style="color: red; ">
</form>
<%--不要在form中使用--%>
<%--<button onclick="addUser()">注册</button>--%>
<%--<script>--%>
<%--    function addUser() {--%>
<%--        location.href = "addUser.jsp";--%>
<%--    }--%>
<%--</script>--%>
</body>

</html>