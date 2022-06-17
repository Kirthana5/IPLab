/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletPrograms;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kirthana Balasubramanian
 */
@WebServlet(name = "qn30", urlPatterns = {"/qn30"})
public class qn30 extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String name=request.getParameter("name");
            String id=request.getParameter("empid");
            double basicPay=Double.parseDouble(request.getParameter("basicPay"));
            double da=0.1*basicPay;
            double hra=0.03*basicPay;
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet qn30</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h2>Net Salary</h2>");
            out.println("<p>Name<br>"+name+"</p>");
            out.println("<p>Employee ID<br>"+id+"</p>");
            out.println("<p>Basic Pay<br>Rs."+basicPay+"/-</p>");
            out.println("<p>DA<br>Rs."+da+"/-</p>");
            out.println("<p>HRA<br>Rs."+hra+"/-</p>");
            out.println("<p>Net Salary<br>Rs."+(basicPay+hra+da)+"/-</p>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    

}
