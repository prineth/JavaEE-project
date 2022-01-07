/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.addSignData;
import model.checkAvail;

/**
 *
 * @author user
 */
public class checkAvailability extends HttpServlet {

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
            out.println("<title>Servlet checkAvailability</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet checkAvailability at " + request.getContextPath() + "</h1>");
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
        String roomType = request.getParameter("room_type");
        int nights = Integer.parseInt(request.getParameter("nights"));
        int rooms = Integer.parseInt(request.getParameter("rooms"));
        int noOfGuest = Integer.parseInt(request.getParameter("no_of_guests"));
        String ArrivalDate = request.getParameter("arrival_date");
        String DepatureDate = request.getParameter("departure_date");
        
       //out.println(roomType);
       // out.println(nights);
      //  out.println(rooms);
      //  out.println(noOfGuest);
      //  out.println(ArrivalDate);
       // out.println(DepatureDate);
        
        
       
        
          checkAvail c = new checkAvail();
          String check=c.avail(rooms,roomType);
          
          HttpSession session = request.getSession();
          session.setAttribute("roomType",roomType);
          session.setAttribute("rooms",rooms);
          session.setAttribute("nights",nights);
          session.setAttribute("noOfGuest",noOfGuest);
          session.setAttribute("ArrivalDate",ArrivalDate);
          session.setAttribute("DepatureDate",DepatureDate);
          
          out.println(check);
           response.sendRedirect("./roomsAvaialable.jsp");
            //request.setAttribute("status",check);
           // RequestDispatcher rd = request.getRequestDispatcher("./roomsAvaialable.jsp");
           // rd.forward(request, response);
         
            
           
       
        session.setAttribute("status",check);
         
          
        //  String hello=((String) check.get(0));
          
         
        
        
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
