
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
private static final long serialVersionUID = 1L;

/**
 * @see HttpServlet#HttpServlet()
 */
public Servlet() {
    super();
   
}
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    PrintWriter out = response.getWriter();
    response.setContentType("text/html");
    RequestDispatcher requestDispatcher;

    String from = request.getParameter("sender");
    String password = request.getParameter("pass");
    String to = request.getParameter("receiver");
    String subject = request.getParameter("subject");
    String message = request.getParameter("message");

    Properties properties = System.getProperties();
    properties.put("mail.smtp.auth", "true");
    properties.put("mail.smtp.starttls.enable", "true");
    properties.put("mail.smtp.port", "587");

    if (from.contains("hotmail")) {
        properties.put("mail.smtp.host", "smtp.live.com");

    } else if (from.contains("gmail")) {
        properties.put("mail.smtp.host", "smtp.gmail.com");

    } else if (from.contains("yahoo")) {
        properties.put("mail.smtp.host", "smtp.mail.yahoo.com");

    } else {
        out.println("<h2 style='color:red;'>Unknown domain name!!</h2><br>"
                + "<p>Please use 'Yahoo or Gmail or Hotmail'</p>");
    }

    Session messageSession = Session.getDefaultInstance(properties, new Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, password);
        }
    });


    try {
        MimeMessage mimeMessage = new MimeMessage(messageSession);
        mimeMessage.setFrom(new InternetAddress(from));
        mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
        mimeMessage.setSubject(subject);
        mimeMessage.setText(message);

        Transport.send(mimeMessage);
        requestDispatcher = request.getRequestDispatcher("/sendmail.jsp");
        requestDispatcher.forward(request, response);
        out.println("<h2 style='color:green;'>Message sended successfully.</h2><br>" + "<p>Welldone.</p>");

    } catch (MessagingException e) {
        requestDispatcher = request.getRequestDispatcher("/sendmail.jsp");
        out.println("<h2 style='color:red;'>Fatal Error!!</h2><br>" + "<p>" + e.getMessage() + "</p>");
    }

}

}
