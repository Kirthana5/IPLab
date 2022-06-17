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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kirthana Balasubramanian
 */
@WebServlet(name = "qn29_b_1", urlPatterns = {"/qn29_b_1"})
public class qn29_b_1 extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String name=request.getParameter("name");
            String pwd=request.getParameter("pwd");
            
            Cookie cookie=new Cookie("name",name);
            response.addCookie(cookie);
            
            cookie=new Cookie("pwd",pwd);
            response.addCookie(cookie);

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet qn29_b_1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Cookies added..!!</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

  
}
