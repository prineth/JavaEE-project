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
import model.loginData;
import model.passwordEncryption;
import model.unameCheck;


public class login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
         response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
	
        String email = request.getParameter("name");
        String passk = request.getParameter("pass");
        String pass = passwordEncryption.MD5(passk);

          unameCheck b=new unameCheck();
          boolean check=b.viewdata(email);
        
          loginData c = new loginData();
          List blist= c.getDatas(email,pass);

             if(check==false){
               String msg="username or password incorrect";
               out.println(msg);
               request.setAttribute("messageTwo",msg);
               RequestDispatcher rd = request.getRequestDispatcher("./login.jsp");
               rd.forward(request, response);
             }
            
             if(check==true){
                   
                   String emailss=((String) blist.get(0));
                   String passw = ((String) blist.get(1));
                   int id = ((int)blist.get(2));
                   String fname = ((String) blist.get(3));
                   String lname = ((String) blist.get(4));
                   int number = ((int)blist.get(5));
                 
                    if(pass.equals(passw) && email.equals(emailss)){
                         HttpSession session = request.getSession();
                         session.setAttribute("userid",id);
                         session.setAttribute("email",emailss);
                         session.setAttribute("fname",fname);
                         session.setAttribute("lname",lname);
                         session.setAttribute("number",number);

                      RequestDispatcher rd = request.getRequestDispatcher("./accomadation.jsp");
                      rd.forward(request, response);
                 }else{
               String msg="username or password incorrect";
               out.println(msg);
               request.setAttribute("messageTwo",msg);
               RequestDispatcher rd = request.getRequestDispatcher("./login.jsp");
               rd.forward(request, response);
                    }
             }
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
