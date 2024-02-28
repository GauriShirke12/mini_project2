<%-- 
    Document   : updaterecord
    Created on : 13 Feb, 2024, 11:45:08 PM
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
                    url(https://medatech.com/wp-content/uploads/2017/11/Website-Background.png);
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
      
           String id=request.getParameter("id");
       
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/internshipprogram","root","");
      Statement st=con.createStatement();
       ResultSet rs=null;
      String sql="select * from ems where id="+id; 
     
        rs=st.executeQuery(sql);

       
               while(rs.next())
               {
               
               %>
        <center>
    
             <h2>Employee Data</h2>
               <form action="finalupdate.jsp">
                   <input type="hidden" name="id1" value="<%=rs.getString("id")%>" /><br>
                   <table border="1">
    <tbody>
        <tr>
            
            <td>ID:</td>
            <td><input type="text" name="id" value=" <%=rs.getString("id")%>" /><br></td>
        </tr>
        <tr>
            <td>location:</td> 
            <td><input type="text" name="location" value=" <%=rs.getString("location")%>" /><br></td>
        </tr>
        <tr>
            <td>email:</td>
            <td><input type="text" name="email" value=" <%=rs.getString("email")%>" /><br></td>
            </tr>
            <tr>
            <td>Gender:</td>
            <td><input type="text" name="gender" value="<%=rs.getString("gender")%>" /><br></td>
            </tr>
            <tr>
            <td>Mobile No:</td>
            <td><input type="text" name="mobileno" value="<%=rs.getString("mobileno")%>" /><br></td>
            </tr>
            <tr>
            <td>salary:</td>
            <td><input type="text" name="salary" value=" <%=rs.getString("salary")%>" /><br></td>
            </tr>
            <tr>
            <td>city:</td>
            <td><input type="text" name="city" value="<%=rs.getString("city")%>" /><br></td>
            </tr>
            <tr>
            <td>Username:</td>
            <td><input type="text" name="username" value="<%=rs.getString("username")%>" /><br></td>
            </tr>
            <tr>
            <td>password:</td>
            <td><input type="text" name="password" value="<%=rs.getString("password")%>" /><br></td>
            </tr> 
    <tr>
        <td><input type="submit" value="Update" /></td>
    </tr>
               </form>
                   <%
                       
                       }
               
   %>
   
 
        
        <%
        con.close();
    }   
   catch(Exception e)
   {
   
  out.print(e);
   
   }       
        %>  
        
        </center>
      
    </body>
</html>

            