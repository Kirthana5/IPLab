<%-- 
    Document   : qn26
    Created on : 18 Jun, 2022, 5:43:57 AM
    Author     : Kirthana Balasubramanian
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="http://localhost:8080/IPLab/qn26_2.jsp">
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th></th>
            </tr>
        <%
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/MyDatabase", "Kirthana","12345");
            Statement st;
            ResultSet rs;
            
            st=con.createStatement();
            
            rs=st.executeQuery("select * from GOODS");
            
           
            while(rs.next())
            {
                 out.println("<tr>"
                         + "<td>"+rs.getInt(1)+"</td>"
                         + "<td>"+rs.getString(2)+"</td>"
                         + "<td>"+rs.getDouble(3)+"</td>"
                         + "<td><input type='submit' name='"+rs.getInt(1)+"' value='Add To Cart'></td>"
                         +"</tr>");
            }
        %>
        </table>
        </form>
    </body>
</html>
