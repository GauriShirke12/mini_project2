<%-- 
    Document   : delete
    Created on : 17 Feb, 2024, 11:24:48 PM
    Author     : gauri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-image:                     
                url(https://img.freepik.com/free-photo/abstract-blue-background-with-smooth-lines_476363-5637.jpg?size=626&ext=jpg);
                
                background-repeat: no-repeat;
                
                background-size: cover;
            }
        </style>
    </head>
    <body>
    <center>
        <%@page import="java.util.*,java.sql.*"%>
              <%@page import="java.sql.DriverManager"%>
       <%
          
      String id=request.getParameter("id");
            
   
        try 
   {
       
      Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram","root","");
Statement st=con.createStatement();
String sql="delete from ems where id="+id;
st.executeUpdate(sql);
out.print("data delete successfully...");
    
    }   
   catch(Exception e)
   {
   
   out.print(e);
   
   }
            
%>
<br><br><a href="Allstudents.jsp"><b><font size="5">back to page</font></b></a>
    </center>
    </body>
</html>
