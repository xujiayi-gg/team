<%@ tag pageEncoding="UTF-8" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="dataBaseName" required="true" %>
<%@ attribute name="tableName" required="true" %> 
<%@ attribute name="user" required="true" %>  
<%@ attribute name="password" required="true" %>  
<%@ variable name-given="biao" scope="AT_END" %>
<%@ variable name-given="queryResult" scope="AT_END" %>
<%  StringBuffer result;     
    result=new StringBuffer();
    try{  Class.forName("com.nysql.jdbc.Driver");
    }
    catch(Exception e){} 
    Connection con;
    Statement sql; 
    ResultSet rs;
    try{  result.append("<table border=1>"); 
          String uri="jdbc:mysql://127.0.0.1/:"+dataBaseName;
          con=DriverManager.getConnection(uri,user,password);
          DatabaseMetaData metadata=con.getMetaData();
          ResultSet rs1=metadata.getColumns(null,null,tableName,null);
          int number1=0;
          result.append("<tr>");
          while(rs1.next()){
             number1++;
             String clumnName=rs1.getString(4);
             result.append("<td>"+clumnName+"</td>");
          }
          result.append("</tr>");
          sql=con.createStatement();
          rs=sql.executeQuery("SELECT * FROM "+tableName);
          while(rs.next()){
               result.append("<tr>");
               for(int k=1;k<=number1;k++) 
                  result.append("<td>"+rs.getString(k)+"</td>");
               result.append("</tr>");
          }
          result.append("</table>");
          rs1.close();
          rs.close();
          sql.close();
          con.close();
    }
    catch(SQLException e){
          result.append("请输入正确的用户名和密码");
    }
    jspContext.setAttribute("queryResult",new String(result));//返回queryResult对象
    jspContext.setAttribute("biao",tableName);                //返回biao对象
%>
