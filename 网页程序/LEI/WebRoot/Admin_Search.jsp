<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<title>信息查询界面</title>
<body style="background:url(image/th.jpg) ;background-size:cover; "> 
<left>
<%  String flag = (String)session.getAttribute("flag");
     if(flag==null || flag!="success") response.sendRedirect("Admin_Error.jsp");
  %> 
    <br><br>
<strong><font color="#ff8000">欢迎来到信息查询界面！
<br><br><font color="#000000">请选择查询条件：<br><br></font></font></strong>
<form method="post" action="Admin_Search_Process.jsp" name="infocxform">
<p><input type="radio" checked="checked" value="Cname" name="infocxtj"> 按姓名查询</p>
<p><input type="radio" value="Csex" name="infocxtj"> 按性别查询</p>
<p><input type="radio" value="Cadress" name="infocxtj"> 按地区查询</p>
<p>关键字查询：
<br><input type="text" maxlength="20" size="20" name="cxkey"> </p><br>
<p>&nbsp;<input type="submit" value="       查询       " name="cxbt"></p></form><br>

</body>
</html>




