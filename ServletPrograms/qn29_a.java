/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletPrograms;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

//29.	a) Write a java servlets to keep track of visit count of the page.
/**
 *
 * @author Kirthana Balasubramanian
 */
@WebServlet(name = "qn29_a", urlPatterns = {"/qn29_a"})
public class qn29_a extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            HttpSession session=request.getSession();
            
            Integer c=(Integer)session.getAttribute("visit");
            
            
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet qn29_a</title>");            
            out.println("</head>");
            out.println("<body>");
            if(c==null)
            {
                c=0;
                session.setAttribute("visit",c);
                out.println("<h1>Welcome..!!This is your visit number-"+session.getAttribute("visit")+"..!!</h1>");
            }
            else
            {
                session.setAttribute("visit",++c);
                out.println("<h1>Welcome again..!!This is your visit number-"+session.getAttribute("visit")+"..!!</h1>");
            }
            out.println("</body>");
            out.println("</html>");
        }
    }

   

}
