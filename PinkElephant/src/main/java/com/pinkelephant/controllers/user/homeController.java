package com.pinkelephant.controllers.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.pinkelephant.daos.user.FilmImagesDAO;
import com.pinkelephant.daos.user.homeDAO;
import com.pinkelephant.model.user.Award;
import com.pinkelephant.model.user.User;
import com.pinkelephant.model.user.emailServices;
import com.pinkelephant.services.user.homeServices;
import com.pinkelephant.model.user.sendEmail;
import com.pinkelephant.model.user.Films;

@Controller
public class homeController {
	
	@Autowired
	private homeServices homeservice;
	@Autowired
	private emailServices emailService;
	@Autowired
	private homeDAO hDAO;
	@Autowired
	private FilmImagesDAO filmImagesDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(homeController.class);
	
	// url mapping for home page
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getHomePage(Model model) {
	logger.info("PinkElephant.homeController  :  getHomePage()");
		// call the view
	List<Films> awardsData = filmImagesDAO.getFilmImages();
        // Add awards data to the model
        model.addAttribute("awardsData", awardsData);
		return "home";
	}
	
	@RequestMapping("/services/{className}")
	@ResponseBody
	public String showServicesPage(@PathVariable String className, HttpSession session) {
	    logger.info("PinkElephant.homeController: showServicesPage()");

	    // Check if the data is already in the session
	    String services = (String) session.getAttribute(className);

	    if (services == null) {
	        // If not in the session, query the database
	        services = homeservice.getServicesOnCategory(className);

	        // Store the result in the session
	        session.setAttribute(className, services);
	    }

	    return services;
	}

	
	@RequestMapping("/services")
	public String showServicesPage(Model model) {
		logger.info("PinkElephant.homeController  :  showServicesPage()");
		List<Films> awardsData = filmImagesDAO.getFilmImages();
	        // Add awards data to the model
	        model.addAttribute("awardsData", awardsData);
		return "services"; // This assumes you have a "services.jsp" file in your "WEB-INF/views/" directory
	}

	@RequestMapping("/about")
	public String showAboutPage(Model model) {
		logger.info("ENTERING: PinkElephant.homeController  :  showAboutPage()");
//		hDAO.insertImage();
		List<Award> awardsData = hDAO.fetchAwards();
        // Add awards data to the model
        model.addAttribute("awardsData", awardsData);
        
        logger.info("LEAVING: PinkElephant.homeController  :  showAboutPage()");
		return "about"; // This assumes you have a "about.jsp" file in your "WEB-INF/views/" directory
	}

	@RequestMapping("/projects")
	public String showProjectsPage() {
		logger.info("PinkElephant.homeController  :  showProjectsPage()");
		return "projects"; // This assumes you have a "projects.jsp" file in your "WEB-INF/views/" directory
	}

	@RequestMapping("/contact-us")
	public String showContactUsPage() {
		logger.info("PinkElephant.homeController  :  showContactUsPage()");
		return "contact-us"; // This assumes you have a "contact-us.jsp" file in your "WEB-INF/views/" directory
	}
	
	@RequestMapping(value = "/sendEmailDetails", method = RequestMethod.GET)
	@ResponseBody
	public boolean sendEmail(@ModelAttribute("user") User user) {
	    logger.info("PinkElephant.homeController  :  sendEmailDetails()");
		boolean generateEmail = (new sendEmail()).sendEmail(user);
		return generateEmail; 
	}

	@RequestMapping("/hiring")
	public String showHiringPage() {
		logger.info("PinkElephant.homeController  :  showHiringPage()");
		return "hiring"; // This assumes you have a "hiring.jsp" file in your "WEB-INF/views/" directory
	}
	
	 @RequestMapping(path="/upload", method = RequestMethod.POST)
	 @ResponseBody
	    public String handleFileUpload(@RequestPart("file") MultipartFile file) {
	        // Process the uploaded file
	        // Send email with the uploaded file
		 boolean status = false;
	        try {
	        	status = emailService.sendEmailWithAttachment(file.getBytes(), file.getOriginalFilename());
			} catch (IOException e) {
				e.printStackTrace();
			}
	        return status+"";
	    }
	 
}
