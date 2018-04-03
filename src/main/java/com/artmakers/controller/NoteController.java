package com.artmakers.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping("/note/")
@Controller
public class NoteController {
	
	@RequestMapping("list")
	public String list() {
		
		return "note.list";
	}

}