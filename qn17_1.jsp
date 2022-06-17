<%-- 
    Document   : qn17_1
    Created on : 18 Jun, 2022, 12:09:39 AM
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
            String name=request.getParameter("name");
            String id=request.getParameter("id");
            
            Cookie c=new Cookie("name",name);
            response.addCookie(c);
            
            c=new Cookie("id",id);
            response.addCookie(c);
            
        %>
        <form action="http://localhost:8080/IPLab/qn17_2.jsp">
            Product ID<input type="number" name="pdt">
            <br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
