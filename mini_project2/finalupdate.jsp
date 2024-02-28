<%-- 
    Document   : finalupdate
    Created on : 13 Feb, 2024, 11:48:11 PM
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
                    url(https://ak.picdn.net/shutterstock/videos/20813968/thumb/1.jpg);
                
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
          String id1=request.getParameter("id1");
      String id=request.getParameter("id");
            String location=request.getParameter("location");
            String email=request.getParameter("email");
            
            String gender=request.getParameter("gender");
             String mobileno=request.getParameter("mobileno");
            String salary=request.getParameter("salary");
          
               String city=request.getParameter("city");
                String username=request.getParameter("username");
                 String password=request.getParameter("password");
            PreparedStatement ps=null;
   
        try 
   {
       
      Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram","root","");

String sql="Update ems set id=?,location=?,email=?,gender=?,mobileno=?,salary=?,city=?,username=?,password=? where id="+id1;
ps=con.prepareStatement(sql);

ps.setString(1, id);
ps.setString(2, location);
ps.setString(3, email);
ps.setString(4, gender);
ps.setString(5, mobileno);
ps.setString(6, salary);
ps.setString(7, city);
ps.setString(8, username);
ps.setString(9, password);


int i=ps.executeUpdate();

if(i>0)
{
out.print("Employee Record Update successfully...");
}
else
{
out.print("Problem in updating Records...");

}

        con.close();
    }   
   catch(Exception e)
   {
   
   out.print(e);
   
   }
            
%>
<br><br><a href="Allstudents.jsp"><b><font size="5">Back To Page</font></b></a>
    </center>
    </body>
</html>
