

<%@ page language="java"  contentType="text/html;chaset=utf-8" import="java.util.*,java.sql.*,MyBean.*" pageEncoding="UTF-8"%>
<html>
<title>查询结果界面</title>
<body style="background:url(image/th.jpg) ;background-size:cover; ">
<br>
<%  String flag = (String)session.getAttribute("flag");
     if(flag==null || flag!="success") response.sendRedirect("Admin_Error.jsp");
  %> 
<center>
<strong><font color="#ff8000">信息查询结果<br><br></font></strong>
<table width="600" border="1" align="center">
<tbody align="center">
<tr>
<td>职工号</td><td>姓名</td><td>性别</td><td>年龄</td><td>职位</td><td>操作</td>
</tr>
<%
   String sql=String.format("select * from Admister_List");
   sqlBean db=new sqlBean();
   ResultSet rs = db.executeQuery(sql);
   while(rs.next()){
 %>
<tr>

<td><%=rs.getString(1) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getInt(5) %></td>
<td><%=rs.getString(6) %></td>
<td><a href="Admin_T_Delete.jsp?Mname=<%=rs.getString(3)%>" target="_self">删除</a> </td>
</tr>
<%}%>
</tbody></table><br>
  <br>
  <a href="index.jsp" target="_self">返回</a>
 
</center></body>
</html>
