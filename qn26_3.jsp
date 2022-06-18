<%-- 
    Document   : qn26_3
    Created on : 18 Jun, 2022, 6:28:04 AM
    Author     : Kirthana Balasubramanian
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/MyDatabase", "Kirthana","12345");
            Statement st;
            ResultSet rs;
            
            st=con.createStatement();
            
            int qty=Integer.parseInt(request.getParameter("qty"));
            
            rs=st.executeQuery("select * from GOODS where id="+(Integer)(session.getAttribute("pid")));
            
            while(rs.next())
            {
                out.println("<p>Product ID</p>");
                out.println("<p>"+rs.getInt(1)+"</p>");
                out.println("<p>Product Name</p>");
                out.println("<p>"+rs.getString(2)+"</p>");
                out.println("<p>Price</p>");
                out.println("<p>"+rs.getDouble(3)+"</p>");
                out.println("<p>Quantity</p>");
                out.println("<p>"+qty+"</p>");
                out.println("<p>Total Amount <br>Rs."+qty*rs.getDouble(3)+"/-</p>");
            }
        %>
    </body>
</html>
