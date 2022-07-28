<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
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

String id=request.getParameter("id");

Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/onlinebbs";
String user="root";
String password="139133";
Connection conn=DriverManager.getConnection(url, user, password);

String sql="delete from message where id=?";
PreparedStatement stmt=conn.prepareStatement(sql);
stmt.setString(1,id);
stmt.executeUpdate();
%>
<script type="text/javascript">
window.location="a_message.jsp";
</script>
</body>
</html>