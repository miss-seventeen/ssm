<%--
  Created by IntelliJ IDEA.
  User: 2022
  Date: 2022/6/3
  Time: 17:22
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>User</title>
</head>
<body class="container">
<br/>
<h1>用户列表</h1>
<br/><br/>
<div class="with:80%">


<%-- <a href="addUser">正常添加</a>--%>

<%-- <a href="addJsp">不正常添加</a>--%>


  <%-- <a href="addAndUpdate">加或改</a>--%>
   <%--
  <a href="updateUser">改</a>
  <a href="delUser">删</a>
  <br>
  --%>

   <table  class="table table-hover" border="1" cellspacing="1" cellpadding="1">

       <tr>
           <th>用户ID</th>
           <th>用户名</th>
           <th>用户实名</th>
           <th>密码</th>
           <th>年龄</th>
           <th>改</th>
           <th>删</th>
       </tr>

       <tbody>

       <c:forEach items="${list}" var="user" varStatus="a">
           <tr>
               <td>${a.index+1}</td>
               <td>${user.username}</td>
               <td>${user.nickname}</td>
               <td>${user.password}</td>
               <td>${user.age}</td>

               <td><a href="findUserById?id=${user.id}">修改</a></td>
               <td><a href="delUser?id=${user.id}">删除</a></td>
           </tr>
       </c:forEach>

       <br/>
       </tbody>

</table>
</div>
<div class="form-group">
    <div class="col-sm-2 control-label">
        <a href="addUser.jsp" class="btn btn-info">添加</a>
    </div>
</div>
</body>
</html>
