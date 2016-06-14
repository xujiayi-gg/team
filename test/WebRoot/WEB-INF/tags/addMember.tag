<%@ tag pageEncoding="UTF-8"%>
<%@ tag import="java.sql.*" %>
<%@ attribute name="logNumber" required="true" %>
<%@ attribute name="password" required="true" %>
<%  
    String condition=
    "INSERT INTO member VALUES"+
"("+"'"+logNumber+"','"+password+"'"+")";
    StringBuffer result;
    result=new StringBuffer();
    try{   Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    Connection con;
    Statement sql; 
    ResultSet rs;
    try{ String uri= "jdbc:mysql://127.0.0.1:3306/mydb";
         con=DriverManager.getConnection(uri,"root","");
         sql=con.createStatement();
         sql.executeUpdate(condition);
         sql.close();
         con.close();
    }
    catch(Exception e){
        out.print(""+e);
    }
%> 