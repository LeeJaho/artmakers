package com.artmakers.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("/home/")
@Controller("HomeController")
public class HomeController {
	
	
	@GetMapping("index")
	public String index() {
		
		return "home.index";
	}
	
	
}