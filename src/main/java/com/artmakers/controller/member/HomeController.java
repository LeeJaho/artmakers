package com.artmakers.controller.member;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.Principal;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.artmakers.entity.Member;
import com.artmakers.service.member.MemberService;




@RequestMapping("/member/")
@Controller("MemberHomeController")
public class HomeController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("index")
	public String index(Principal principal, Model model) {
		String id = principal.getName();
		if(id!=null) {
			Member member = memberService.getMember(id);
			model.addAttribute("member", member);
		}
		return "member.index";
	}
	
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
	public String join(MultipartFile file, Member member, HttpServletRequest request){
		
		 System.out.println(file);
	      ServletContext ctx = request.getServletContext();
	      System.out.println(ctx);
	       String path = ctx.getRealPath("/resources/profile/"+member.getId()); //물리경로
	       String imgPath = "/resources/profile/"+member.getId();
	       
	       File filepath = new File(path);
	       if(!filepath.exists())
	          filepath.mkdirs();
	       
	       System.out.println(path);
	       System.out.println(filepath);
	       
	       
	      if(!file.isEmpty()) {
	         try {
	            String fname = file.getOriginalFilename();  
	            System.out.println(fname);
	            member.setPhoto(imgPath+"/"+fname);
	            
	            InputStream fis = file.getInputStream();
	            
	            FileOutputStream fos = new FileOutputStream(path + File.separator + fname); //File.separator 구분자 / \ 윈도우는 \ 유닉스는 / 니깐 둘중 골라주는놈 파일.세퍼레이톨
	            
	            byte[] buf = new byte[1024]; //버퍼 만들기
	            
	            int size = 0;
	            
	            while((size = fis.read(buf,0,1024)) != -1)
	                  fos.write(buf,0,size);
	            
	            //fis.read(buf, 0, 1024);
	            
	            fis.close();
	            fos.close();
	            
	         } catch (IOException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	         }
	      }
	      
	      System.out.println(member);

	      
		String pwd = member.getPwd();
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPwd = passwordEncoder.encode(pwd);
		member.setPwd(hashedPwd);
		
		//result : 1 -> insert 완료되었다.
		int result = memberService.insertMember(member);
		System.out.println(result);
		return "redirect:../home/logsuccess";
	}
	
}