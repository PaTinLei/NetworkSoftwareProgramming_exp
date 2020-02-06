<%@ page language="java"  contentType="text/html;chaset=utf-8" import="java.util.*,java.sql.*,MyBean.*" pageEncoding="UTF-8"%>
<html>
<title>数据删除结果</title>
<body style="background:url(image/th.jpg) ;background-size:cover; ">
<center>
<br><br>
<%  String flag = (String)session.getAttribute("flag");
    if(flag==null || flag!="success") response.sendRedirect("Admin_Error.jsp");//合法登录验证
 
    String Cname = conClass.tochinese(request.getParameter("Cname"));  //接收超链接数据并转码
    String sql=String.format("delete  from Cust_List where Cname='%s'",Cname);
    
    if(Cname!=null && Cname.length()!=0)
    { sqlBean db = new sqlBean();
      if(db.executeInsert(sql)!=0) out.print("数据删除成功！");
      else out.print("数据删除失败！");
    }
%>
 <br><br>
  <a href="index.jsp" target="_self">返回主界面</a>
</body>
</html>