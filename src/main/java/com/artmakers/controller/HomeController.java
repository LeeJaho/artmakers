package com.artmakers.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.artmakers.entity.Member;
import com.artmakers.service.MemberService;


@RequestMapping("/home/")
@Controller("HomeController")
public class HomeController {
	
	/*@Autowired
	private MemberService service;*/
	
	@RequestMapping("index")
	public String index() {
		
		return "home.index";
	}
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String login() {
		
		return "home.login";
	}
	
	@GetMapping("join")
	public String join() {
		
		return "home.join";
	}
	
	@PostMapping("join")
	@ResponseBody
	public String join(Member member) {
		String pwd = member.getPwd();
		
		return null;
	}
}