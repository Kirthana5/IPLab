<%-- 
    Document   : qn9
    Created on : 17 Jun, 2022, 8:22:52 PM
    Author     : Kirthana Balasubramanian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            double p=Double.parseDouble(request.getParameter("p"));
            double n=Double.parseDouble(request.getParameter("n"));
            double r=Double.parseDouble(request.getParameter("r"));
            double SI=(p*n*r)/100;
            
            out.println("<h1>SI=" +SI+ "</h1>");
        %>
    </body>
</html>
