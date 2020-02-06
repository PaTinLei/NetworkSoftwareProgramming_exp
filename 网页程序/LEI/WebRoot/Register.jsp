<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<title>账户注册</title>
   <body style="background:url(image/th.jpg) ;background-size:cover; "> 
     <center>
       <br><br>
       <strong><font color="#ff8000" size="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;帐号注册</font></strong>
       <br><br>
       <form method="post" action="Register_Process.jsp" name="Register">
       <p>
        职工号：<input type="text" maxlength="20" size="25" name="Mnum"><br>
       </p>
       <p>
        密&nbsp;&nbsp;&nbsp;码：<input type="text" maxlength="20" size="25" name="Mpassword"><br>
       </p>
       <p>
        姓&nbsp;&nbsp;&nbsp;名：<input type="text" maxlength="20" size="25" name="Mname"><br>
       </p>
       <p>
        性&nbsp;&nbsp;&nbsp;别：
        <input type="radio"  value="男" name="Msex" checked="checked"> 男
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;        
        <input type="radio"  value="女" name="Msex"> 女
       	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <br></p>
       <p>年&nbsp;&nbsp;&nbsp;龄：<input type="text" maxlength="20" size="25" name="Mage" value="20"></p>
       <p>&nbsp;职&nbsp;&nbsp;&nbsp;位：<input type="text" maxlength="20" size="25" name="Mdept" value="主管"> <br></p>
       <p><input type="submit" value="确认" name="lrbut">&nbsp;&nbsp;&nbsp;&nbsp;
       <input type="reset" value="重填" name="resetbt"> </p>
       <p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></form>
     </center>
  </body>
</html>
