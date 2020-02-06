<%@ page language="java" contentType="text/html;chaset=utf-8" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<meta charset="UTF-8">
  <title>管理员登录</title>
  
 <body>
	<center> 
	<br><br/><br><br/><br><br/>
	<strong><font color="#ff8040" size="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;管理员登录</font></strong><br><br/>
	<form method="post" action="Register_Check.jsp" name="login">
	<label>用户名：</label> 
	<input type="text" name="Mname" maxlength="25" size="30" style="border-radius:10px;"/>
    <br><br>
	<label>密&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
	<input type="password" name="Mpassword" size="30" maxlength="25" style="border-radius:10px;"/>  <br><br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" value="确认" name="submit">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
	<input type="reset" value="取消" name="reset"><br>&nbsp;<br/>
	</form> 
	<br/><br><br/>
	</center>
</html>
