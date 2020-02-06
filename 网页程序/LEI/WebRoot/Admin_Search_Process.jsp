<%@ page language="java"  contentType="text/html;chaset=utf-8" import="java.util.*,java.sql.*,MyBean.*" pageEncoding="UTF-8"%>
<html>
<title>查询结果界面</title>
<body style="background:url(image/th.jpg) ;background-size:cover; ">
<br>
<center>
<strong><font color="#ff8000">信息查询结果<br><br></font></strong>
<table width="600" border="1" align="center">
<tbody align="center">
<tr>
<td>姓名</td><td>性别</td><td>年龄</td><td>职业</td><td>地址</td>
</tr>
<%
   String infocxtj = conClass.tochinese(request.getParameter("infocxtj"));
   String cxkey = conClass.tochinese(request.getParameter("cxkey"));
   String sql=String.format("select * from Cust_List where %s like'%%%s%%'",infocxtj,cxkey);
   sqlBean db=new sqlBean();
   ResultSet rs = db.executeQuery(sql);
   while(rs.next()){
 %>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getInt(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><a href="Admin_Modify.jsp?Cname=<%=rs.getString(1)%>" target="_self">修改</a> 
<a href="Admin_Delete.jsp?Cname=<%=rs.getString(1)%>" target="_self">删除</a> </td>
</tr>
<%}%>
</tbody></table><br>
  <br>
  <a href="index.jsp" target="_self">返回</a>
 
</center></body>
</html>
