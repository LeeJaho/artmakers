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
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.artmakers.entity.Dayfolder;
import com.artmakers.entity.Member;
import com.artmakers.service.member.CollectionService;
import com.artmakers.service.member.MemberService;




@RequestMapping("/member/collection/")
@Controller("MemberCollectionController")
public class CollectionController {
	
	@Autowired
	private CollectionService collectionService;
	
	@RequestMapping("myday")
	public String myday() {
	
		return "member.collection.myday";
	}
	
	@PostMapping("myday")
	public String myday(Dayfolder dayFolder, Principal principal){
		String memberId = principal.getName();
		dayFolder.setMemberId(memberId);
		int result = collectionService.insertDayFolder(dayFolder);
		System.out.println(result);
		
		return "member.collection.myday";
	}
	
	@GetMapping("mylike-partial")
	public String mylikePartial() {
		
		//Note note = service.getNote(id);
		
		//model.addAttribute("note", note);
		return "member.collection.mylike-partial";
	}
	
	@GetMapping("myday-partial")
	public String mydayPartial() {
		
		//Note note = service.getNote(id);
		
		//model.addAttribute("note", note);
		return "member.collection.myday-partial";
	}


}