package ego.wear.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMailUtil {
	public static SendMailUtil sendmail = null;
	public static SendMailUtil getInstance() {
		if(sendmail != null ) {
			sendmail = new SendMailUtil();
		}
		return sendmail;
	}
	public void sendMail(String emailReicieve, String subject, String content) {
		final String userName = "lcao4568@gmail.com";
		final String password = "10417818";
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.port", "587");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.starttls.enable", "true");
		//login email
		Session session = Session.getInstance(prop, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(userName, password);
			}
		});
		// send email message
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(userName));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(emailReicieve));
			message.setSubject(subject, "UTF-8");
			message.setText(content, "UTF-8");
			Transport.send(message);
		} catch (MessagingException e) {
			// TODO: handle exception
		}
	}
}
