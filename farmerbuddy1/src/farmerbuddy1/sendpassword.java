package farmerbuddy1;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;
import java.io.IOException;


public class sendpassword {

	public static void sendPassword(String email, String pass) 
	{
		String to=email;
		String subject="OTP Sent";
		String message = "Dear Teacher Please Login Using "+email+"& password is:"+pass;
		
		String from="lit.lab.project@gmail.com";
		String password="litproject2018";
		
		try 
		{
			//Authentication with Gmail server
			Properties props=new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");
			
			
			Authenticator auth = new Authenticator() 
			{
				public PasswordAuthentication getPasswordAuthentication() 
				{
					return new PasswordAuthentication(from, password);
				}
			};
			
			Session session = Session.getInstance(props, auth);
			
			//Composing the message
			MimeMessage msg=new MimeMessage(session);
			msg.setFrom(new InternetAddress(from));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			msg.setSubject(subject);
			msg.setText(message);
			
			//Sending message
			Transport.send(msg);
			System.out.println("Message delivered successfully , Check your mail ...........");
			//response.sendRedirect("mail.jsp?msg=mail delivered");
		} 
		catch (MessagingException e) 
		{
			// TODO: handle exception
			//throw new RuntimeException(e);
			e.printStackTrace();
		}
	
		
	}

}
