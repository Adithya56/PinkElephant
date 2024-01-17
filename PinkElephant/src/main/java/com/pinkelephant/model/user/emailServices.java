package com.pinkelephant.model.user;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.stereotype.Service;

import com.pinkelephant.controllers.user.homeController;

@Service
public class emailServices {

	private static final String EMAIL_USERNAME = "akshayaakula047@gmail.com";
    private static final String EMAIL_PASSWORD = "drrtoqiwlqgkwrum";
    private static final Logger logger = LoggerFactory.getLogger(emailServices.class);
	    
    public boolean sendEmailWithAttachment(byte[] attachment, String attachmentName) {
    	logger.info("PinkElephant.emailServices: sendEmailWithAttachment()");
    	
        String firstMsg = "Dear team,";
        String subject = "New member wants to join us";

        Properties properties = new Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");

        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(EMAIL_USERNAME, EMAIL_PASSWORD);
            }
        });

        try {
            Message emailMessage = new MimeMessage(session);
            emailMessage.setFrom(new InternetAddress(EMAIL_USERNAME));
            emailMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse("adithya67.2002@gmail.com"));
            emailMessage.setSubject(subject);

            // Create the message body
            MimeBodyPart messageBodyPart = new MimeBodyPart();
            messageBodyPart.setText("Dear team, \n\n\t New member wanted to join with us !! \n\n");

            // Create the attachment body part
            MimeBodyPart attachmentBodyPart = new MimeBodyPart();
            DataSource source = new ByteArrayDataSource(attachment, "application/octet-stream");
            attachmentBodyPart.setDataHandler(new DataHandler(source));
            attachmentBodyPart.setFileName(attachmentName);

            // Create a multipart message
            Multipart multipart = new MimeMultipart();
            multipart.addBodyPart(messageBodyPart);
            multipart.addBodyPart(attachmentBodyPart);

            // Set the content of the message
            emailMessage.setContent(multipart);

            // Send the message
            Transport.send(emailMessage);

        } catch (MessagingException e) {
            System.out.println("Error sending email with attachment: " + e.getMessage());
            return false;
        }
        return true;
    }
}
