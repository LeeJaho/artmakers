package com.artmakers.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("/home/")
@Controller
public class HomeController {
	
	@RequestMapping("index")
	public String index() {
		
		return "home.index";
	}

}