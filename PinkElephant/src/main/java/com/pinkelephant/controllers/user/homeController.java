package com.pinkelephant.controllers.user;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pinkelephant.model.user.User;
import com.pinkelephant.services.user.homeServices;
import com.pinkelephant.model.user.sendEmail;


@Controller
public class homeController {
	@Autowired
	private homeServices homeservice;

	private static final Logger logger = LoggerFactory.getLogger(homeController.class);
	
	// url mapping for home page
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getHomePage(Model model) {
	logger.info("PinkElephant.homeController  :  getHomePage()");
		// call the view
		return "home";
	}
	
	@RequestMapping("/services")
	public String showServicesPage() {
		logger.info("PinkElephant.homeController  :  showServicesPage()");
		return "services"; // This assumes you have a "services.jsp" file in your "WEB-INF/views/" directory
	}

	@RequestMapping("/about")
	public String showAboutPage() {
		logger.info("PinkElephant.homeController  :  showAboutPage()");
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

	@PostMapping("/handleStockUpdation")
	@ResponseBody
	public List<String> getServicesOnCategory(@RequestParam(value = "className") String category) {
		logger.info("PinkElephant.homeController  :  getServicesOnCategory()");
		List<String> services = homeservice.getServicesOnCategory(category);
		return services;
	}

}
