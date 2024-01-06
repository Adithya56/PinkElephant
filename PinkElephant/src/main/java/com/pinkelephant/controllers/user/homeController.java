package com.pinkelephant.controllers.user;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class homeController {
	private static final Logger logger = LoggerFactory.getLogger(homeController.class);

	// url mapping for home page
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getHomePage(Model model) {
	logger.info("eStoreProduct:homeController:calling the home view page");
		// call the view
		return "home";
	}
}
