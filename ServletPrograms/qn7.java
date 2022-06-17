/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletPrograms;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kirthana Balasubramanian
 */
@WebServlet(name = "qn7", urlPatterns = {"/qn7"})
public class qn7 extends HttpServlet {
    HashMap<String,Address> map=new HashMap<>();
    Address addr;
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
            
            addr=new Address("aaa","B.E", "ABC Colony", "2nd St", "Madurai", "TN","aaa@gmail.com");
            map.put("aaa@gmail.com", addr);
            
            addr=new Address("bbb","B.E", "XYZ Colony", "3rd St", "Madurai", "TN","bbb@gmail.com");
            map.put("bbb@gmail.com", addr);
            
            String email=request.getParameter("email");
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet qn7</title>");            
            out.println("</head>");
            out.println("<body>");
            if(map.containsKey(email)){
                addr=map.get(email);
                out.println("<p>FirstName- "+addr.firstname+"</p>");
                out.println("<p>Designation- "+addr.designation+"</p>");
                out.println("<p>Address1- "+addr.address1+"</p>");
                out.println("<p>Address2- "+addr.address2+"</p>");
                out.println("<p>City- "+addr.City+"</p>");
                out.println("<p>State- "+addr.State+"</p>");
                out.println("<p>email- "+addr.emailid+"</p>");
            }
            out.println("</body>");
            out.println("</html>");
        }
    }

    

}
