<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'handleLogin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
 <%
    String name=request.getParameter("number");
    String pword=request.getParameter("password");
  %>
 <%  
     Connection con;
     Statement sql; 
     ResultSet rs;
    try{Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    try{
    String uri="jdbc:mysql://127.0.0.1/mydb";
    String user="root";
    String password="";
    con=DriverManager.getConnection(uri,user,password);
    sql=con.createStatement();
    rs=sql.executeQuery("SELECT * FROM member");
    while(rs.next()){
      if(name.equals(rs.getString("number")) && pword.equals(rs.getString("password")))
        response.sendRedirect("menu.jsp");
            }
        out.print("输入的账号或密码有误!");%>
        <A href="login.jsp">返回重新登录</A>

    <%}
        catch(SQLException e){
       out.print(e);
       } 
    %>
  </body>
</html>
