package com.mx.portal.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
 
@Controller
public class LonginController {
	private static final Logger logger = LoggerFactory.getLogger(LonginController.class);
	private static final String ACCEPT_JSON = "Accept=*/*";
	  
	 
	@RequestMapping(value = "/home", method = {RequestMethod.POST,RequestMethod.GET}, headers = {ACCEPT_JSON}) 
	public String login(HttpServletRequest request,
			@RequestParam(value="userName") String userName,
			@RequestParam(value="password") String password)
			throws Exception {
		logger.info("gettings marcs report");
		 HttpSession session=request.getSession();  
		 session.setAttribute("usuario",userName);
		 session.setAttribute("password",password);
		return "view/home";
	}
	
	@RequestMapping(value = "/config", method = {RequestMethod.POST,RequestMethod.GET}, headers = {ACCEPT_JSON}) 
	public String configuration(HttpServletRequest request)
			throws Exception {
		logger.info("gettings configuration");
		  
		return "configuration/config";
	}
	
	
	@RequestMapping(value = "/out", method = {RequestMethod.POST,RequestMethod.GET}, headers = {ACCEPT_JSON}) 
	public String out(HttpServletRequest request) throws Exception {
		logger.info("gettings marcs report");
		 HttpSession session=request.getSession();  
         session.invalidate();  
		return "view/home";
	}
}
