<%-- 
    Document   : Allstudent.jsp
    Created on : 29 Jan, 2024, 5:56:30 PM
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
                    url(https://coolbackgrounds.io/images/backgrounds/white/white-trianglify-b79c7e1f.jpg);
                
                background-repeat: no-repeat;
                
                background-size: cover;
            }
        </style>
    </head>
    <body>
       
      <%@page import="java.util.*,java.sql.*"%>
      <%@page import="java.sql.DriverManager"%>
       <%
           try
           {
               ResultSet rs=null;
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram","root","");
               Statement st=con.createStatement();
               String sql="select * from ems ";
               rs=st.executeQuery(sql);
               %>
    <center>
        <h2>Employee data</h2>
               <table broder="2">
                   <tbody>
                       <tr>
                           <td>Employee Id</td>
                           <td>location</td>
                           <td>email</td>
                           <td>Gender</td>
                           <td>Mobile No</td>
                           <td>Salary</td>                           
                           <td>City</td>
                           <td>Username</td>
                           <td>Password</td>
                           <td>Action</td>
                           <td>Action</td>
                       </tr>
                  
                   
                   
               <%
                   
                   
                   while(rs.next())
                   {
                       
                   %>
    <tr>
        <td><%=rs.getString("id")%></td>
        <td><%=rs.getString("location")%></td>
        <td><%=rs.getString("email")%></td>
        <td><%=rs.getString("gender")%></td>
        <td><%=rs.getString("mobileno")%></td>
        <td><%=rs.getString("salary")%></td>        
        <td><%=rs.getString("city")%></td>
        <td><%=rs.getString("username")%></td>
         <td><%=rs.getString("password")%></td>
       
        <td> <a href="updaterecord.jsp?id=<%=rs.getString("id")%>">update</a> </td>
        <td> <a href="delete.jsp?id=<%=rs.getString("id")%>">delete</a> </td>

    </tr>
    <%
        }
%>
       </tbody>
           </table>   
           <%
con.close();
}
catch(Exception e)
{
out.print(e);
           }
           %>
           
           <br><br><br><a href="index.html" style="color:"><b>back to home page</b></a>
    </center>
    </body>
</html>
