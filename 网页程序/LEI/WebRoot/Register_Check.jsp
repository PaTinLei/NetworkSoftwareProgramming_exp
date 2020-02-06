<%@ page language="java"   import="java.util.*,java.sql.*,MyBean.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <title>Rgister_Check page</title>
  <body>
  <% 
    String Mname=request.getParameter("Mname");
    Mname=conClass.tochinese(Mname);
    String Mpassword =request.getParameter("Mpassword");
    
    if(Mname!=null)
    { sqlBean db = new sqlBean();
      String sql=String.format("select * from Admister_List where Mname='%s' and Mpassword='%s'",Mname,Mpassword);
      ResultSet rs=db.executeQuery(sql);
      if(rs.next())
      { session.setAttribute("Mname",Mname);
        session.setAttribute("flag","success");//success表示登录成功
        response.sendRedirect("index.jsp");
      }
      else
      {
       session.setAttribute("flag","fail"); //fail表示用户名或密码错误
       response.sendRedirect("Register_Error.jsp");
      }
      
    }
    else
    { session.setAttribute("flag","no");  //no表示没有登录
      response.sendRedirect("Register_Error.jsp");
    }
   %>
  </body>
</html>
