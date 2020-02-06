<%@ page language="java" contentType="text/html;chaset=utf-8" import="java.util.*,java.sql.*,MyBean.*" pageEncoding="UTF-8"%>
<html>
<title>数据录入结果</title>
<body style="background:url(image/th.jpg) ;background-size:cover; "> 
<center>
<br><br>
<%  String flag = (String)session.getAttribute("flag");
    if(flag==null || flag!="success") response.sendRedirect("error.jsp");//合法登录验证
%>
<% //接收表单数据并转码
    String Cname = conClass.tochinese(request.getParameter("Cname"));
    String Csex = conClass.tochinese(request.getParameter("Csex"));
    int Cage = Integer.parseInt(request.getParameter("Cage"));
    String Cdept = conClass.tochinese(request.getParameter("Cdept"));
    String Cadress = conClass.tochinese(request.getParameter("Cadress"));
    
    if(Cname!=null && Cname.length()!=0)
    { sqlBean db = new sqlBean();
      String sql = String.format("insert into Cust_List values('%s','%s',%d,'%s','%s')",Cname,Csex,Cage,Cdept,Cadress);
      if(db.executeInsert(sql)!=0) out.print("数据录入成功！");
      else out.print("数据录入失败！");
    }
    else
    { out.print("数据录入失败！");
    }
 %> 
  <br><br>
  <br><br>
  <a href="index.jsp" target="_self">返回主界面</a>
</center>
</body>
</html>
