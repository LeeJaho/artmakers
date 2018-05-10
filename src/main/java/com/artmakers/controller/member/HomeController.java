package com.artmakers.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.artmakers.entity.Member;
import com.artmakers.service.member.MemberService;




@RequestMapping("/member/")
@Controller("MemberHomeController")
public class HomeController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("daywrite")
	public String myday() {
		
		return "member.daywrite";
	}
	
	@GetMapping("login")
	public String login() {
		
		return "member.login";
	}
	
	@GetMapping("join")
	public String join() {
		
		return "member.join";
	}
	
	@PostMapping("join")
	@ResponseBody
	public String join(Member member) {
		String pwd = member.getPwd();
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPwd = passwordEncoder.encode(pwd);
		member.setPwd(hashedPwd);
		
		//result : 1 -> insert 완료되었다.
		int result = memberService.insertMember(member);
		System.out.println(result);
		return pwd + " : " + hashedPwd;
	}
	
}