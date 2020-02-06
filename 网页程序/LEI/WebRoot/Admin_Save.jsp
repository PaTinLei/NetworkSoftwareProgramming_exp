<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<title>客户管理</title>
   <body style="background:url(image/th.jpg) ;background-size:cover; "> 
   <%  String flag = (String)session.getAttribute("flag");
     if(flag==null || flag!="success") response.sendRedirect("Admin_Error.jsp");
  %> 
     <center>
       <br><br>
       <strong><font color="#ff8000" size="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客户信息录入</font></strong>
       <br><br>
       <form method="post" action="Admin_Save_Process.jsp" name="Admin_Save">
       <p>
        姓&nbsp;&nbsp;&nbsp;名：<input type="text" maxlength="20" size="25" name="Cname"><br>
       </p>
       <p>
        &nbsp;&nbsp;&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;别：
        <input type="radio"  value="男" name="Csex" checked="checked"> 男
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        
        <input type="radio"  value="女" name="Csex"> 女
       	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <br></p>
       <p>年&nbsp;&nbsp;&nbsp;龄：<input type="text" maxlength="20" size="25" name="Cage" value="20"></p>
       <p>&nbsp;职&nbsp;&nbsp;&nbsp;位：<input type="text" maxlength="20" size="25" name="Cdept" > <br></p>
       <p>&nbsp;住&nbsp;&nbsp;&nbsp;址：<input type="text" maxlength="20" size="25" name="Caddress" > <br></p>
       <p><input type="submit" value="确认" name="lrbut">&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="reset" value="重填" name="resetbt"> </p>
       <p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></form>
     </center>
  </body>
</html>
