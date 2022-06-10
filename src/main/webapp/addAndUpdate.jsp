<%--
  Created by IntelliJ IDEA.
  User: 2022
  Date: 2022/6/8
  Time: 2:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>修改用户</title>
    <link rel="stylesheet" href="@{/css/bootstrap.css}"/>
</head>

<br/>
<body class="container">
<h1>添加用户</h1>
<br/><br/>

<div class="with:80%">
    <form class="form-horizontal"  action="${pageContext.request.contextPath}/user/addAndUpdate" method="get">

        <input type="hidden" name="id" value="${user.id}"><br/>

        <div class="form-group">
            <label for="username" class="col-sm-2 control-label">用户名</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="username" id="username" value="${user.username}" placeholder="用户名" />
            </div>
        </div>
        <div class="form-group">
            <label for="nickname" class="col-sm-2 control-label">姓名</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="nickname" id="nickname" value="${user.nickname}" placeholder="姓名"/>
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-2 control-label">密码</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="password" id="password" value="${user.password}" placeholder="密码"/>
            </div>
        </div>
        <div class="form-group">
            <label for="age" class="col-sm-2 control-label">年龄</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="age" id="age" value="${user.age}" placeholder="年龄"/>
            </div>
        </div>


        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" value="修改" class="btn btn-info"/>
            </div>

        </div>
    </form>

</div>

</body>







<%--

<body>
<form  action="${pageContext.request.contextPath}/user/addAndUpdate" method="post">

    <input type="hidden" name="id" value="${user.id}"><br/>

    用户名：<input type="text" name="username" value="${user.username}"><br/>
    姓名：  <input type="text" name="nickname" value="${user.nickname}"><br/>
    密码：  <input type="password" name="password" value="${user.password}"><br/>
    年龄：  <input type="text" name="age" value="${user.age}"><br/>
    <input type="submit" value="添加">
</form>
</body>
--%>


</html>
