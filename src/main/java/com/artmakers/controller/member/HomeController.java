package com.artmakers.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@RequestMapping("/member/")
@Controller("memberHomeController")
public class HomeController {
	
	@RequestMapping("daywrite")
	public String myday() {
		
		return "member.daywrite";
	}
	
}