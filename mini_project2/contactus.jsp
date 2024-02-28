<%-- 
    Document   : contactus
    Created on : 16 Feb, 2024, 1:05:36 PM
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
                    url();
                
                background-repeat: no-repeat;
                
                background-size: cover;
            }
        </style>
    </head>
    <body>
    <center>
        <form action="index.html">
       

        <%
            String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String email=request.getParameter("email");
            String num=request.getParameter("num");
            String com=request.getParameter("comment");
            
          
            
            %>
           <br><br><button type="submit" class="btn" style="background: yellow">Logout</a></button> 
            </form>
    </center>
    </body>
</html>
