<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="com.cn.pojo.Userinfo" %>
    <%@ page import="com.cn.factory.DaoFactory" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");%>
<%
   Userinfo emp=new Userinfo();
   emp.setUsername(request.getParameter("username"));
   emp.setPassword(request.getParameter("password"));

   try{
	   if(!DaoFactory.getIEmpDAOInstance().exist(emp)){
	     if(DaoFactory.getIEmpDAOInstance().insert(emp))
%>
   <h3>注册成功！</h3>
 <% }else{ %>
   <h3>注册失败！</h3>
 <%  } %>
 <% }catch(Exception e){
	 e.printStackTrace();
 } %>
 <a href="login.jsp">返回登录</a>
</body>
</html>
</body>
</html>