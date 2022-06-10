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
    <title>添加用户</title>
</head>
<br/>
<body class="container">
<h1>添加用户</h1>
<br/><br/>

<div class="with:80%">
<form class="form-horizontal"  action="addUser" method="post">
    <div class="form-group">
        <label for="username" class="col-sm-2 control-label">用户名</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="username" id="username" placeholder="username"/>
        </div>
    </div>
    <div class="form-group">
        <label for="nickname" class="col-sm-2 control-label">姓名</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="nickname" id="nickname" placeholder="nickname"/>
        </div>
    </div>
    <div class="form-group">
        <label for="password" class="col-sm-2 control-label">密码</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="password" id="password" placeholder="password"/>
        </div>
    </div>
    <div class="form-group">
        <label for="age" class="col-sm-2 control-label">年龄</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="age" id="age" placeholder="age"/>
        </div>
    </div>


    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <input type="submit" value="添加" class="btn btn-info"/>
        </div>

    </div>
</form>
   <%--
    <form action="${pageContext.request.contextPath}/user/addUser" method="post">
    用户名：<input type="text" name="username"><br/>
    姓名：  <input type="text" name="nickname"><br/>
    密码：  <input type="password" name="password"><br/>
    年龄：  <input type="text" name="age"><br/>
    <input type="submit" value="添加">
    </form>
--%>
</div>
</body>
</html>
