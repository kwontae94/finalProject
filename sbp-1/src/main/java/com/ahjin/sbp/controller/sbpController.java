package com.ahjin.sbp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ahjin.sbp.model.Guestbook;
import com.ahjin.sbp.service.SbpService;
import com.ahjin.sbp.serviceImpl.SbpServiceImpl;

@Controller
public class sbpController {
	
	@Autowired
	SbpService sbpservice;
	@Autowired
	SbpServiceImpl service;
	
	@RequestMapping("/")
	public String home(Model model) {
		return "home";
	}
	
	@RequestMapping("/guestbooks")
	public String guestBook() {
		return "guestBooks";
	}
		
	@RequestMapping(value = "/ajaxGuestBooks")
	public String ajaxGuestBooks(Model model) {
			
			List<Guestbook> guestBook = sbpservice.getGuestBookList();
			model.addAttribute("guestBooks",guestBook);
			return "ajaxGuestBookList";
		}
	
	@RequestMapping("addGuestBook")
	public String addGuestBook(Guestbook guestbook) {
		sbpservice.addGuestBook(guestbook);
		return "guestBooks";
	}
	
	@RequestMapping("deleteGuestBook")
	public String deleteGuestBook(Guestbook guestbook) {
		sbpservice.deleteGuestBook(guestbook);
		return "guestBooks";
	}
}
