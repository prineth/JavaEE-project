/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.addSignData;

/**
 *
 * @author user
 */
public class roomBook extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet roomBook</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet roomBook at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        
        PrintWriter out = response.getWriter();
        String Regular = request.getParameter("Regular Room");
        String Deluxe = request.getParameter("Deluxe Suite");
        String Executive = request.getParameter("Executive Room");
        String Wedding = request.getParameter("Wedding Halls");
        String Ballroom = request.getParameter("Ballroom Halls");
        String Conference = request.getParameter("Conference Halls");
        
        
        HttpSession session = request.getSession();
        session.setAttribute("Regular",Regular);
        session.setAttribute("Deluxe",Deluxe);
        session.setAttribute("Executive",Executive);
        session.setAttribute("Wedding",Wedding);
        session.setAttribute("Ballroom",Ballroom);
        session.setAttribute("Conference",Conference);
        
         String user_email = (String)session.getAttribute("email"); 
           
           if(user_email == null){
                response.sendRedirect("./login.jsp");
           }else{
               response.sendRedirect("./roomsAvaialable.jsp");
           }
        
    
        
        
       // response.sendRedirect("./roomsAvaialable.jsp");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
