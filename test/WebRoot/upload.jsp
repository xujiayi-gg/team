<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'upload.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="image/b.jpg">
  <div align="right"><A href="menu.jsp"><font size=2>返回主页</font></A></div>
  <br>
<% 
	Connection conn=null;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		String strConn="jdbc:mysql://127.0.0.1:3306/mydb";
		String strUser="root";
		String strPassword="";
		conn=DriverManager.getConnection(strConn,strUser,strPassword);
		Statement stm=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
		String strSql="SELECT name,writer,publish,date,price,introduce FROM books";
		ResultSet rs=stm.executeQuery(strSql);
		//分页
%>
		<center>
			<h2>
				浏览书籍的基本信息
			</h2>
		</center>
		<table border="1" align="center"
			cellpadding="0" cellspacing="1" bgcolor="#c5d7ed">
			<tr height="30">
				<th>
					书籍名称
				</th>
				<th>
					作者
				</th>
				<th>
					出版社
				</th>
				<th>
					出版日期
				</th>
				<th>
					价格
				</th>
				<th>
					简介
				</th>
			</tr>
			<%
			int p;
	    int pagecount=3;// 每页显示3条记录
	    int p2=1;//分段记录数
	    int rowcount;//总记录数
	    int intpagecount;//总页数
	    String page1=request.getParameter("page");
	    if(page1==null||page1==""){
	         p=1;	         
	      }   	        
	    else
	        {
	         p=Integer.parseInt(page1);	        
	         }
	    rs.last();//移到最后一条记录
        rowcount = rs.getRow();//取出当前行的编号
      //  intpagecount = (rowcount + pagecount - 1)/pagecount;
      intpagecount = (rowcount%pagecount==0)?(rowcount/pagecount):(rowcount/pagecount+1);
        if(p>intpagecount) p=intpagecount;
        if(p<1) p=1;
        rs.beforeFirst();
			while(rs.next()){
	if(p2>(p-1)*pagecount&&p2<=p*pagecount){
	%>
			<tr height="30" bgcolor="#ffffff" align="center">
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				<td><a href="addToCar.jsp"><font color="#FF0000">加入购物车</font></a></td>
			</tr>
			<%}
                  p2++; 
}
		
 %>
		</table>
		<p align="center" class="STYLE7">
		<form method="POST" action="upload.jsp">
			第<%=p %>页 共<%=intpagecount %>页&nbsp;&nbsp;
			<%if(p>1){ %>
			<a href="upload.jsp?page=1">第一页</a>
			<a href="upload.jsp?page=<%=p-1 %>">上一页</a>
			<%} %>
			&nbsp;&nbsp;
			<%if(p<intpagecount){ %>

			<a href="upload.jsp?page=<%=p+1 %>">下一页</a>
			<a href="upload.jsp?page=<%=intpagecount %>">最后一页</a>
			<%} %>

			&nbsp;&nbsp;转到第
			<input type="text" name="page" size="4">
			页
			<span><input name="Submit" type="submit" value="GO" />
			</span>
		</form>
		
		<% 
rs.close();
		stm.close();
		conn.close();
	}
	catch(ClassNotFoundException e)
	{
		out.println(e.getMessage());
	}
	catch(SQLException e)
	{
		out.println(e.getMessage());
	}
	%>
  </body>
</html>
