package com.bit.web.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class HomeController {

	@RequestMapping("")
	public String home1() {
		return "home.home";	//TilesViewResolver
	}
	
	@RequestMapping("home")
	public String home2() {
		return "home.home";	//TilesViewResolver
	}
}
