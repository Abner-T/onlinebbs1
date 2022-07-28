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
<% request.setCharacterEncoding("utf-8"); %>
<% Userinfo ui=new Userinfo();
 String role=request.getParameter("role");
 ui.setUsername(request.getParameter("user"));
 ui.setPassword(request.getParameter("password"));
 try{
	 if(DaoFactory.getIEmpDAOInstance().exist(ui)){
		 while(role.equals("admin")&&ui.getUsername().equals("admin")&&ui.getPassword().equals("admin")){
%>
<jsp:forward page="manager.jsp"/>
<%
}while(role.equals("user")&&ui.getUsername().equals("admin")&&ui.getPassword().equals("admin")){ %>
<jsp:forward page="login.jsp"/>
<% }while(role.equals("admin")&&!ui.getUsername().equals("admin")&&ui.getPassword().equals("admin")){    %>
<jsp:forward page="login.jsp"/>
<%} %><jsp:forward page="u_homepage.jsp"/>
<%
}else{
%>
<jsp:forward page="login.jsp"/>
<%
} 
%>
<% }catch(Exception e){
	e.printStackTrace();
}
	%>
}
</body>
</html>