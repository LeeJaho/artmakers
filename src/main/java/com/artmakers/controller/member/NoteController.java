package com.artmakers.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;




@RequestMapping("/member/note/")
@Controller("MemberNoteController")
public class NoteController {
	
	@RequestMapping("list")
	public String list() {
		
		return "member.note.list";
	}
	
	@RequestMapping("detail")
	public String detail() {
		
		//Note note = service.getNote(id);
		
		//model.addAttribute("note", note);
		return "member.note.detail";
	}

}