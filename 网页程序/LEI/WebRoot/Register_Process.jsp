<%@ page language="java" contentType="text/html;chaset=utf-8" import="java.util.*,java.sql.*,MyBean.*" pageEncoding="UTF-8"%>
<html>
<title>账户注册结果</title>
	<body style="background:url(image/th.jpg) ;background-size:cover; "> 
	<center>
	<br><br>
	<%  String Mnum = conClass.tochinese(request.getParameter("Mnum"));  //接收表单数据并转码
	    String Mpassword = conClass.tochinese(request.getParameter("Mpassword"));
	    String Mname = conClass.tochinese(request.getParameter("Mname"));
	    String Msex = conClass.tochinese(request.getParameter("Msex"));
	    int Mage = Integer.parseInt(request.getParameter("Mage"));
	    String Mdept = conClass.tochinese(request.getParameter("Mdept"));
	    
	    if(Mnum!=null && Mnum.length()!=0)
	    { sqlBean db = new sqlBean();
	      String sql = String.format("insert into Admister_List values('%s','%s','%s','%s',%d,'%s')",Mnum,Mpassword,Mname,Msex,Mage,Mdept);
	      if(db.executeInsert(sql)!=0) out.print("账户注册成功！");
	      else out.print("账户注册失败！");
	    }
	    else
	    { out.print("账户注册失败！提示：职工号不能为空！");
	    }
	 %> 
	  <br><br>
	    <a href="Register.jsp" target="_self">继续注册</a>
	    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <a href="index.jsp" target="_self">返回登录</a>
	  </center>
</body>
</html>
