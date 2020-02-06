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
<td>名称</td><td>标价</td><td>售价</td><td>简介</td><td>图片</td>
</tr>
<%
   String sql=String.format("select * from product");
   sqlBean db=new sqlBean();
   ResultSet rs = db.executeQuery(sql);
   while(rs.next()){
 %>
<tr>

<td><%=rs.getString(2) %></td>
<td><%=rs.getInt(3) %></td>
<td><%=rs.getInt(4) %></td>
<td><%=rs.getString(8) %></td>
<td><img src=<%=rs.getString(5)%> width="100" heigh="100"/></td>
</tr>
<%}%>
</tbody></table><br>
  <br>
  <a href="index.jsp" target="_self">返回</a>
 
</center></body>
</html>
