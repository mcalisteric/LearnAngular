package com.fdmgroup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class mainController {

	@RequestMapping(value = "/ngController", method = {RequestMethod.POST, RequestMethod.GET})
	public String goToController(){
		return "ngController";
	}
	
	@RequestMapping(value = "/ngDirectives", method = {RequestMethod.POST, RequestMethod.GET})
	public String goToDirectives(){
		return "ngDirectives";
	}
	
	@RequestMapping(value = "/ngServices", method = {RequestMethod.POST, RequestMethod.GET})
	public String goToServices(){
		return "ngServices";
	}
	
	@RequestMapping(value = "/ngRouting", method = {RequestMethod.POST, RequestMethod.GET})
	public String goToRouting(){
		return "ngRouting";
	}
	
}
