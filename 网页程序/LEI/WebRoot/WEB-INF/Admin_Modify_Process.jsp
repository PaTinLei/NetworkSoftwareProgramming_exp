<%@ page language="java" contentType="text/html;chaset=utf-8" import="java.util.*,java.sql.*,MyBean.*" pageEncoding="UTF-8"%>
<html>
<title>信息修改界面</title>
<body style="background:url(image/th.jpg) ;background-size:cover; ">
 <center>
 <%  String flag = (String)session.getAttribute("flag");
     if(flag==null || flag!="success") response.sendRedirect("error.jsp");
  %> 
  <% String Cname = conClass.tochinese(request.getParameter("Cname"));
   String sql=String.format("select * from Cust_List where Cname ='%s'",Cname);
   sqlBean db=new sqlBean();
   ResultSet rs = db.executeQuery(sql);
   rs.next();
  %>
     <br><br>
     <strong><font color="#ff8000">欢迎来到信息修改界面！</font></strong><br><br>
     <form method="post" action="Admin_Modify_Process.jsp" name="xgform">
     
      姓名：<input type="text" maxlength="20" size="20" name="Cname" value=<%=Cname%> readonly="readonly">
     <br><p>性别：<input type="text" maxlength="20" size="20" name="Csex" value=<%=rs.getString(2)%>></p>
     <p>年龄：<input type="text" maxlength="20" size="20" name="Cage" value=<%=rs.getInt(3) %>></p>
     <p>职业：<input type="text" maxlength="20" size="20" name="Cdept" value=<%=rs.getString(4) %>> <br></p>
     <p>地址：<input type="text" maxlength="20" size="20" name="Caddress" value=<%=rs.getString(5)%>> <br></p>
     <p><input type="submit" value="确定" name="lrbut">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
     <p>&nbsp;</p>
     <p>&nbsp;</p>
     <p>&nbsp; </p>
     </form>  
</center>
</body>
</html>
