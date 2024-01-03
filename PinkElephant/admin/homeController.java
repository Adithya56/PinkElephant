package com.pinkelephant.controllers.admin;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class homeController {
	// url mapping for home page
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String getHomePage(Model model) {
			// call the view
			return "adminHome";
		}
}
