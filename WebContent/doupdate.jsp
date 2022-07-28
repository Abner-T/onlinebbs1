<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
response.setContentType("text/html");
response.setCharacterEncoding("utf-8");
request.setCharacterEncoding("utf-8");

String newname=request.getParameter("newname");
String newtitle=request.getParameter("newtitle");
String newdescription=request.getParameter("newdescription");
String idString=request.getParameter("id");


Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/onlinebbs";
String user="root";
String password="139133";
Connection conn=DriverManager.getConnection(url, user, password);

String sql="update message set name=?,title=?,description=? where id=?";
PreparedStatement stmt=conn.prepareStatement(sql);
stmt.setString(1, newname);
stmt.setString(2,newtitle);
stmt.setString(3, newdescription);
stmt.setString(4, idString);
stmt.executeUpdate();
%>
<script>window.location="message.jsp";</script>
</body>
</html>