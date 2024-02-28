<%-- 
    Document   : login
    Created on : 11 Feb, 2024, 10:27:18 PM
    Author     : gauri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <%
           
           String username=request.getParameter("username");
           String password=request.getParameter("password");
           if(username.equalsIgnoreCase("Admin") && password.equals("Admin123"))
           {
               response.sendRedirect("AdminHome.jsp");
           }
           
           else
           {
                response.sendRedirect("Invalide.jsp");
           }
           
        %>
    </center>
    </body>
</html>
