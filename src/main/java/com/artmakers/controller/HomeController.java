package com.artmakers.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@RequestMapping("/home/")
@Controller("HomeController")
public class HomeController {
	
	@RequestMapping("index")
	public String index() {
		
		return "home.index";
	}
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login() {
		
		return "home.login";
	}
	
	@RequestMapping(value="join", method=RequestMethod.GET)
	public String join() {
		
		return "home.join";
	}

}