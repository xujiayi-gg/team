<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Search.jsp' starting page</title>
    
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
	font-weight: bold;
}
-->
    </style>
</head>
  <jsp:include page="head.txt" />
  <body background="image/b.jpg">
  <form name="form1" method="post" action="byBookname.jsp">
    <p align="center" class="STYLE1">输入图书名：
      <input type="text" name="name">
      <input type="submit" name="Submit" value="查询">
    </p></FORM>
      <form name="form2" method="post" action="byPrice.jsp">
    <p align="center" class="STYLE1">&nbsp;</p>
    <p align="center" class="STYLE1">根据价格查询</p>
    <p align="center" class="STYLE1">价格在
      <input name="priceMin" type="text" size="8"> 
      至
      <input name="priceMax" type="text" size="8">
之间 
<input type="submit" name="Submit2" value="查询">
    </p>
  </form>
  <br>
  </body>
</html>
