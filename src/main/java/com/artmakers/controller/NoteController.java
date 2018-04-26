package com.artmakers.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;




@RequestMapping("/note/")
@Controller("NoteController")
public class NoteController {
	
	@RequestMapping("list")
	public String list() {
		
		return "note.list";
	}
	
	@RequestMapping("detail")
	public String detail() {
		
		//Note note = service.getNote(id);
		
		//model.addAttribute("note", note);
		return "note.detail";
	}

}