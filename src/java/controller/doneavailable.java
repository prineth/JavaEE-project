/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.mail.MessagingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.bookingThread;
import model.doneal;

/**
 *
 * @author hirun
 */
@WebServlet(name = "doneavailable", urlPatterns = {"/doneavailable"})
public class doneavailable extends HttpServlet {

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
            out.println("<title>Servlet doneavailable</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet doneavailable at " + request.getContextPath() + "</h1>");
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

    // reads SMTP server setting from web.xml file
    private String host;
    private String port;
    private String user;
    private String pass;

    @Override
    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession();
        int room = (int) session.getAttribute("rooms");
        String roomType = (String) session.getAttribute("roomType");

        out.println(room);
        out.println(roomType);

        int userid = (int) session.getAttribute("userid");
        int nights = (int) session.getAttribute("nights");
        int noOfGuest = (int) session.getAttribute("noOfGuest");
        String ArrivalDate = (String) session.getAttribute("ArrivalDate");
        String DepatureDate = (String) session.getAttribute("DepatureDate");

        doneal c = new doneal();
        bookingThread news = new bookingThread();
        //c.availdone(room, roomType, userid, nights, noOfGuest, ArrivalDate, DepatureDate);
        news.availdoneThread(room, roomType, userid, nights, noOfGuest, ArrivalDate, DepatureDate);

        float roomPrice = 0;

        if ("Regular".equals(roomType)) {
            roomPrice = 10000;
        }
        if ("Deluxe".equals(roomType)) {
            roomPrice = 20000;
        }
        if ("Executive".equals(roomType)) {
            roomPrice = 30000;
        }

        float fullroomprice = room * roomPrice;

        request.setAttribute("roomsprice", fullroomprice);
        RequestDispatcher rd = request.getRequestDispatcher("./payment.jsp");
        rd.forward(request, response);

//------------------  email---------------------------------------
        String recipient = (String) session.getAttribute("email");
//        String recipient = "prinethfernandox@gmail.com";
//        String subject = request.getParameter("subject");
        String subject = "Goldern Reach booking confirmation";
//        String content = request.getParameter("content");
        String content = "Your room is successfully booked. "
                + "If u need update your reservation visit link below."
                + " Link: http://localhost:8080/JavaEE-project/profile.jsp ";

        String resultMessage = "";

        try {
            EmailUtility.sendEmail(host, port, user, pass, recipient, subject, content);
            resultMessage = "The e-mail was sent successfully";
        } catch (MessagingException ex) {
            resultMessage = "There were an error: " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/Result.jsp").forward(
                    request, response);
        }

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
