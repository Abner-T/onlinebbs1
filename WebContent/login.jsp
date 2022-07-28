<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>    
<!DOCTYPE html>

<html>
<head>
<base href="<%=basePath %>">
<title>onlineBBS</title>

<meta charset="UTF-8">

</script>
</head>
<body topmargin="0">
<table width="920" height="600" border="0" align="center">
<tr>
 <td height="100"></td>
 </tr>
 <tr>
 <td height="400"><div align="center">

 <form action="login_check.jsp" method="post" name="login" id="login">
 <div style='background:#1188aa; align:center; border-radius:6px; width:400px; color:#ffffff'>
<br>
<table width="90%" border="0">
<tr>
<td height="33" style='color:#ffffff' align ='center'><strong>用户登录</strong></td></tr>
<tr>
<td height="35"><div align="center">
<label style='color:#ffffff'>账号:
<input typy="text" name="user" id="user" size="20"/>
</label>
</div></td></tr>
<tr>
<td height="30"><div align="center" style='color:#ffffff'>密码:
<label>
<input name="password" type="password" id="password" size="20"/>
</label>
</div></td></tr>
<tr>
<td height="38"><div align="center">
<label>
<input type="radio" name="role" id="radio" value="admin" />
<label style='color:#ffffff'>
管理员&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="role" id="radio" value="user"/>
用户
</label></div>

<tr>
<td height="40"><div align="center">
<label>
<input type="submit" name="submit" id="submit" value="提交" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</label>
<label>
<input type="reset" name="reset" id="reset" value="重置" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br>
<a href="register.jsp">注册</a>
</label>
</div></td></tr>
</table>
<br>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</form>
</div>
</td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
</body>
</html>