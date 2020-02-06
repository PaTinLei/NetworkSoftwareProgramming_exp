<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<body>
 <center>
 <%     String flag = (String)session.getAttribute("flag");
        flag = "fail";
        session.invalidate();
        response.sendRedirect("login.jsp");
        %>

    <br><br><br><br><br>
    <font size="3"><strong>已退出，请重新登陆！
     </strong>
     </font>
     </center>
</body>
</html>
