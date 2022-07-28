<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title></title>
  <link rel="stylesheet" href="./layui/css/layui.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo layui-hide-xs layui-bg-black">留言吧</div>
    <!-- 头部区域（可配合layui 已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <!-- 移动端显示 -->
      <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">
        <i class="layui-icon layui-icon-spread-left"></i>
      </li>
      
      <li class="layui-nav-item layui-hide-xs"><a href="u-homepage.jsp">用户留言吧</a></li>
      <li class="layui-nav-item">
       
      </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item layui-hide layui-show-md-inline-block">
        <a href="javascript:;">
          <img src="//tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" class="layui-nav-img">
          user
        </a>
        <dl class="layui-nav-child">
          <dd><a href="">Your Profile</a></dd>
          <dd><a href="">Settings</a></dd>
          <dd><a href="login.jsp">Sign out</a></dd>
        </dl>
      </li>
      <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>
        <a href="javascript:;">
          <i class="layui-icon layui-icon-more-vertical"></i>
        </a>
      </li>
    </ul>
  </div>
  
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree" lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="javascript:;">留言</a>
          <dl class="layui-nav-child">
            <dd><a href="Sendmessage.jsp">发留言贴</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">留言贴</a>
          <dl class="layui-nav-child">
            <dd><a href="message.jsp">查看留言帖</a></dd>
          </dl>
      </ul>
    </div>
  </div>
  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    <table class="layui-table">
  <colgroup>
    <col width="150">
    <col width="200">
    <col>
  </colgroup>
  <thead>
    <tr>
      <td>当前用户名</td>
      <td>当前题目</td>
      <td>当前留言内容</td>
    </tr> 
  </thead>
<% String idString=request.getParameter("id");
   Class.forName("com.mysql.jdbc.Driver");
   String url="jdbc:mysql://localhost:3306/onlinebbs";
   String user="root";
   String password="139133";
   Connection conn=DriverManager.getConnection(url, user, password);
   String sql="select * from message where id=?;";
   PreparedStatement stmt=conn.prepareStatement(sql);
   stmt.setString(1,idString);
   ResultSet rs=stmt.executeQuery();
   while(rs.next()){
   %>
   <tbody>
  <tr>
   <td><%=rs.getString("name") %></td>
   <td><%=rs.getString("title") %></td>
   <td><%=rs.getString("description") %></td>
   </tr>
  </tbody>
  <%} %>
  </table>
  <form action="doupdate.jsp">
  <span><strong>请输入新的内容:</strong></span><br>
  <input type="hidden" value="<%=request.getParameter("id")%>" name="id"/><br>
  <span>请输入用户名:</span>&nbsp;&nbsp;<input type="text" name="newname"/><br><br>
  <span>请输入新的题目:</span>&nbsp;<input type="text" name="newtitle"/><br><br>
  <span>请留言:</span>&nbsp;&nbsp;&nbsp;<textarea style="width:450px; height:200px" row="15" cols="60" name="newdescription"></textarea><br><br> 
  <button type="submit" class="layui-btn">确认修改</button>
  </form>
    </div>
  </div>
  
  
<script src="./layui/layui.js"></script>
<script>
//JS 
layui.use(['element', 'layer', 'util'], function(){
  var element = layui.element
  ,layer = layui.layer
  ,util = layui.util
  ,$ = layui.$;
  
  //头部事件
  util.event('lay-header-event', {
    //左侧菜单事件
    menuLeft: function(othis){
      layer.msg('展开左侧菜单的操作', {icon: 0});
    }
    ,menuRight: function(){
      layer.open({
        type: 1
        ,content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
        ,area: ['260px', '100%']
        ,offset: 'rt' //右上角
        ,anim: 5
        ,shadeClose: true
      });
    }
  });
  
});
</script>
</body>
</html>