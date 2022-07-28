<%@ page language="java" contentType="text/html; charset=utf-8" import="java.util.*"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="com.cn.pojo.Message" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>
<body>
<% 
response.setContentType("text/html");
response.setCharacterEncoding("utf-8");
request.setCharacterEncoding("utf-8");

 String name=request.getParameter("name");
String title=request.getParameter("title");
String description=request.getParameter("description");

 Class.forName("com.mysql.jdbc.Driver");
 String url="jdbc:mysql://localhost:3306/onlinebbs";
 String user="root";
 String password="139133";
 
 Connection conn=DriverManager.getConnection(url, user, password);
 String sql="insert into message(name,title,description) value(?,?,?)";
 PreparedStatement stmt=conn.prepareStatement(sql);
 stmt.setString(1,name);
 stmt.setString(2,title);
 stmt.setString(3,description);
 stmt.executeUpdate();
 
 conn.close();
%>
<script type="text/javascript">
window.location="message.jsp";
</script>
</body>
</html>