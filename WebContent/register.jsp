<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.cn.pojo.Userinfo" %>
    <%@ page import="com.cn.factory.DaoFactory" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>用户注册</title>
</head>
<body>
<h1>用户注册</h1>
 <form action="register_do.jsp" method="post">
    用户名：<input type="text" name="username"><br><br>
    密码：<input type="password" name="password"><br><br>
  <input type="submit" value="提交"><br>
 </form>
</body>
</html>