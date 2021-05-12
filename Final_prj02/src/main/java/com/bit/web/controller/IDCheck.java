package com.bit.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bit.web.service.IdCheck;

import lombok.Setter;

@Controller
@RequestMapping("/")
public class IDCheck {
	
	@Setter(onMethod_ = {@Autowired})
	private IdCheck idCheck;
	
	@ResponseBody
	@RequestMapping("idcheck")
	public String idCheck(String userId) {
		
		String msg ="사용가능한 아이디 입니다";
		
		idCheck.insertId(userId);
				
		return String.format("%s", msg);
	}

}
