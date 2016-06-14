<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'inputRegister.jsp' starting page</title>
    
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
	font-size: 36px;
	color: #FF0000;
	font-weight: bold;
}
.STYLE2 {
	font-size: 18px;
	font-weight: bold;
}
-->
    </style>
</head>
  
   <body background="image/c.jpg">
   <form name="form1" method="post" action="register.jsp">
     <p align="center" class="STYLE1">注 册</p>
     <p align="center" class="STYLE1">&nbsp;</p>
     <p align="center"><span class="STYLE2">用户帐号：
       </span>
       <input name="number" type="text" id="number">
     </p>
     <p align="center"><span class="STYLE2">登录密码：</span>
       <input name="password" type="text" id="password">
     </p>
     <p align="center" class="STYLE1">
       <input name="Submit" type="submit" class="STYLE2" value="确定">
     </p>
   </form>

   </body>
</html>
