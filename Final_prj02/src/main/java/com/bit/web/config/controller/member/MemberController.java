package com.bit.web.config.controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member/")
public class MemberController {

	@RequestMapping("myinfo")
	public String myinfo() {
		return"member/myinfo";
	}
}
