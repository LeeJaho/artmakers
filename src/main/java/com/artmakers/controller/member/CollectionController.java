package com.artmakers.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;




@RequestMapping("/member/collection/")
@Controller("memberCollectionController")
public class CollectionController {
	
	@RequestMapping("myday")
	public String myday() {
		
		return "member.collection.myday";
	}
	
	@RequestMapping("mymaked")
	public String mymaked() {
		
		//Note note = service.getNote(id);
		
		//model.addAttribute("note", note);
		return "member.collection.mymaked";
	}

}