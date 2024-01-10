package com.pinkelephant.model.user;

import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class sendEmail {

	public boolean sendEmail(User user) {
		
		final String me = "akshayaakula047@gmail.com";
		final String password = "drrtoqiwlqgkwrum";

		// Get form data from the request
		String firstMsg = "Dear team,";
		String email = user.getEmail();
		String subject = "Get in touch with the customer";

		// Set up email properties
		Properties properties = new Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");

		// Set up email session

		Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(me, password);
			}
		});

		try {
			// Create a new message
			Message emailMessage = new MimeMessage(session);

			// Set the sender and recipient addresses
			emailMessage.setFrom(new InternetAddress(me));
			emailMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(me));

			// Set the email subject and body
			emailMessage.setSubject(subject);
			emailMessage.setText(firstMsg+"\n\n\t New customer wanted to get in touch with us !! \n\n\t User: "+user.getName()+"\n\n\t User-email: "+user.getEmail()+"\n\n\t Company: "+user.getCompany()+"\n\n\t Phone number: "+user.getPhoneNo());
			Transport.send(emailMessage);

			// Return a success message to the user

		} catch (MessagingException e) {
			// Return an error message to the user
			System.out.println("error" +e);
			return false;
		}
		return true;
	}

}