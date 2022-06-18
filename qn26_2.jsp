<%-- 
    Document   : qn26_2
    Created on : 18 Jun, 2022, 6:05:03 AM
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
            
            if(request.getParameter("1")!=null)
            {
                rs=st.executeQuery("select * from GOODS where id=1");
            }
            else if(request.getParameter("2")!=null)
            {
                rs=st.executeQuery("select * from GOODS where id=2");
            }
            else 
            {
                rs=st.executeQuery("select * from GOODS where id=3");
            }
            
            while(rs.next())
            {
                session.setAttribute("pid",rs.getInt(1));
                out.println("<p>Product ID</p>");
                out.println("<p>"+rs.getInt(1)+"</p>");
                out.println("<p>Product Name</p>");
                out.println("<p>"+rs.getString(2)+"</p>");
                out.println("<p>Price</p>");
                out.println("<p>"+rs.getDouble(3)+"</p>");
                out.println("<form action='http://localhost:8080/IPLab/qn26_3.jsp'>");
                out.println("Enter quantity<input type='number' name='qty' max="+rs.getInt(4)+" min=1>");
                out.println("<input type='submit' value='Buy'>");
                out.println("</form>");
            }
        %>
        
    </body>
</html>
