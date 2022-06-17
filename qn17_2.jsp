<%-- 
    Document   : qn17_2
    Created on : 18 Jun, 2022, 12:25:34 AM
    Author     : Kirthana Balasubramanian
--%>

<%@page import="java.util.HashMap"%>
<%@page import="ServletPrograms.qn17"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HashMap<Integer,qn17> map=new HashMap<Integer,qn17>();
            qn17 pdt;
            
            pdt=new qn17(1,"Pdt1",10);
            map.put(1, pdt);
            
            pdt=new qn17(2,"Pdt2",15);
            map.put(2, pdt);
            
            pdt=new qn17(3,"Pdt3",20);
            map.put(3, pdt);
            
            int pid=Integer.parseInt(request.getParameter("pdt"));
            Cookie c[]=request.getCookies();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet qn17</title>");            
            out.println("</head>");
            out.println("<body>");
            if(map.containsKey(pid)){
                pdt=map.get(pid);
                out.println("<p>Name- "+c[1].getValue()+"</p>");
                out.println("<p>ID- "+c[2].getValue()+"</p>");
                out.println("<p>Product ID- "+pdt.pid+"</p>");
                out.println("<p>Product Name- "+pdt.name+"</p>");
                out.println("<p>Stock available- "+pdt.stock+"</p>");
                
            }
            out.println("</body>");
            out.println("</html>");
        %>
    </body>
</html>
