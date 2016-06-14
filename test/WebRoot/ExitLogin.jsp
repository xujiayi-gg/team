<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ExitLogin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="image/a.jpg">
  <p>&nbsp;</p>
  <CENTER> 
   <h1><Font Size=6 color=#FF9933>欢 迎 再 次 光 临</font></h1>
   <h1><Font Size=6 color=#FF9933>"<a href="login.jsp">书香斋</a>"</font></h1>
   <p><img src="image/d.jpg" width="432" height="384"></p>
  </CENTER>
<br>
  </body>
</html>
