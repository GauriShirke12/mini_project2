<%-- 
    Document   : Registerstudent
    Created on : 22 Jan, 2024, 5:02:50 PM
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
                    url(https://www.arkoselabs.com/wp-content/uploads/elementor/thumbs/higlights-owabprii5wfwioy2mnt9ffiuyvsh4bausykdi8ijj0.jpg);
                
                background-repeat: no-repeat;
                
                background-size: cover;
            }
        </style>
    </head>
    <body>
    <center>
      
        <form action="index.html">
         
        
        <%@page import="java.util.*,java.sql.*"%>
         <%@page import="java.sql.DriverManager"%>
        <%
            try
        {
        String n=request.getParameter("id");
      String loc=request.getParameter("location");
        String email=request.getParameter("email");
         
          String gen=request.getParameter("gender");
          String mob=request.getParameter("mobileno");
           String sal=request.getParameter("salary");
            
         String city=request.getParameter("city");
        String uname=request.getParameter("username");
        String pass2=request.getParameter("password");
        
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram","root","");
            Statement st=con.createStatement();
            String sql="insert into ems(id,location,email,gender,mobileno,salary,city,username,password)values('"+n+"' , '"+loc+"' , '"+email+"', '"+gen+"' , '"+mob+"' , '"+sal+"' , '"+city+"', '"+uname+"' , '"+pass2+"')";
            st.executeUpdate(sql);
            out.print("data inserted successfully");
            con.close();
        }
        catch(Exception e)
        {
            out.print(e);
        }

   %>
   <br><br><button type="submit" class="btn" style="background: yellow">Logout</a></button>
        </form>
    </center>
 </body>
</html>
