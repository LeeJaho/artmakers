package com.artmakers.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;




@RequestMapping("/member/collection/")
@Controller("MemberCollectionController")
public class CollectionController {
	
	@RequestMapping("myday")
	public String myday() {
		
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