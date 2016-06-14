<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

    <style type="text/css">
<!--
.STYLE1 {
	font-family: "宋体";
	color: #FF0000;
}
.STYLE2 {font-family: "宋体"; color: #000000; }
-->
    </style>
</head>

  <body background="image/c.jpg">
  <form name="form1" method="post" action="handleLogin.jsp">
     <td><div align="right"><A href="index.jsp"><font size=2>返回主页</font></A></div></td>
     <div align="right"></div>
    <h2 align="center" class="STYLE1">登 录     </h2>
    <p align="center" class="STYLE2">登录账号：
      <input type="text" name="number">
    </p>
    <p align="center" class="STYLE2">登录密码：
      <input type="text" name="password">
    </p>
    <p align="center" class="STYLE2">
      <input type="submit" name="Submit" value="登录">
    </p>
  </form>
  <br>
  </body>
</html>
