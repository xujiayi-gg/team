<%@ tag pageEncoding="utf-8" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="priceMin" required="true" %>
<%@ attribute name="priceMax" required="true" %>
<%@ variable name-given="queryResultByPrice" scope="AT_END" %>
<%
float max=Float.parseFloat(priceMax);
float min=Float.parseFloat(priceMin);
  StringBuffer result;
    result=new StringBuffer();
    try{   Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    Connection con;
    Statement sql; 
    ResultSet rs;
    int n=0;
    try{  result.append("<table border=1>"); 
          String uri= "jdbc:mysql://127.0.0.1/mydb";
          con=DriverManager.getConnection(uri,"root","");
          DatabaseMetaData metadata=con.getMetaData();
          ResultSet rs1=metadata.getColumns(null,null,"books",null);
          int number1=0;
          result.append("<tr>");
          while(rs1.next()){
             number1++;
             String clumnName=rs1.getString(4);
             result.append("<td>"+clumnName+"</td>");
          }
          result.append("</tr>");
          sql=con.createStatement();
          String condition="SELECT * FROM books Where price <="+max+" AND "+"price>="+min;
          rs=sql.executeQuery(condition);
          while(rs.next()){
             result.append("<tr>");
             for(int k=1;k<=number1;k++) 
               result.append("<td>"+rs.getString(k)+"</td>");
             result.append("</tr>");
          }
          result.append("</table>");
          con.close();
    }
    catch(SQLException e){
          result.append(e);
    }
    jspContext.setAttribute("queryResultByPrice",new String(result)); 
%>