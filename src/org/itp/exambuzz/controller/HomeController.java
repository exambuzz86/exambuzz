package org.itp.exambuzz.controller;

import org.apache.log4j.Logger;
import org.itp.exambuzz.service.RegistrationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@Autowired
	private RegistrationService registrationService;

	final static Logger logger = Logger.getLogger(HomeController.class);

	@RequestMapping("/")
	public String viewService() {

		return "index";
	}

}
