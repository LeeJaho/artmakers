package com.artmakers.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.artmakers.entity.Member;
import com.artmakers.service.HomeService;
import com.artmakers.service.member.MemberService;


@RequestMapping("/home/")
@Controller("HomeController")
public class HomeController {
	
	
	@GetMapping("index")
	public String index() {
		
		
		return "home.index";
	}
	
	@GetMapping("logsuccess")
	public String loginSuccess() {
		
		return "home.logsuccess";
	}
	
}