package com.mx.portal.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private static final String ACCEPT_JSON = "Accept=*/*";
	  
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String initJSPAdmonCatalogos()
			throws Exception { 
		return "view/home";
	}
	
}
