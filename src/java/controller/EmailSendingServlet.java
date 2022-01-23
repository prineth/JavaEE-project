package controller;
 
import java.io.IOException;
import java.io.PrintWriter;
import javax.mail.MessagingException;
 
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 

@WebServlet("/EmailSendingServlet")
public class EmailSendingServlet extends HttpServlet {
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
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        
        // reads form fields
//        String recipient = request.getParameter("recipient");
        String recipient = email;
//        String subject = request.getParameter("subject");
        String subject = "Goldern Reach booking confirmation";
//        String content = request.getParameter("content");
        String content = "Your room is successfully booked";
 
        String resultMessage = "";
 
        try {
            EmailUtility.sendEmail(host, port, user, pass, recipient, subject,content);
            resultMessage = "The e-mail was sent successfully";
        } catch (MessagingException ex) {
            resultMessage = "There were an error: " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/Result.jsp").forward(
                    request, response);
        }
    }
}