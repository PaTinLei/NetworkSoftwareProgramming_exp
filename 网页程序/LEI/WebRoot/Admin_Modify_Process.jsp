<%@ page language="java"  contentType="text/html;chaset=utf-8" import="java.util.*,java.sql.*,MyBean.*" pageEncoding="UTF-8"%>
<html>
<title>数据更新结果</title>
<body style="background:url(image/th.jpg) ;background-size:cover; ">
<center>
<br><br>
<%  String flag = (String)session.getAttribute("flag");
    if(flag==null || flag!="success") response.sendRedirect("Admin_Error.jsp");//合法登录验证
 %>
 <% String Cname = conClass.tochinese(request.getParameter("Cname"));  //接收表单数据并转码

    String Csex = conClass.tochinese(request.getParameter("Csex"));
    int Cage = Integer.parseInt(request.getParameter("Cage"));
    String Cdept = conClass.tochinese(request.getParameter("Cdept"));
    String Caddress = conClass.tochinese(request.getParameter("Caddress"));
    
    if(Cname!=null && Cname.length()!=0)
    { sqlBean db = new sqlBean();
      String sql=String.format("update Cust_List set Caddress='%s',Csex='%s',Cage=%d,Cdept='%s' where Cname='%s'",Caddress,Csex,Cage,Cdept,Cname);
      if(db.executeInsert(sql)!=0) out.print("数据修改成功！");
      else out.print("数据修改失败！");
    }
    else
    { out.print("数据修改失败！");
    } 
 %> 
  <br><br>
  <a href="index.jsp" target="_self">返回查询界面</a>
</center>
</body>
</html>
