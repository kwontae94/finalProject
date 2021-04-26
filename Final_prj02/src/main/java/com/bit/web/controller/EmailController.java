package com.bit.web.controller;

import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import lombok.Setter;

@Controller
@RequestMapping("/")
class EmailController {
	
	@Setter(onMethod_ = {@Autowired} )
	private JavaMailSender javaMailSender;
	
	@ResponseBody
	@RequestMapping("sendmail")
	public String sendEmail(String address) {
		
		Random random = new Random();
		int key= random.nextInt(8999)+1000;
		
		SimpleMailMessage message = new SimpleMailMessage();
		
		/*
		 * System.out.println(address); 
		 * System.out.println(key);
		 */
		
		message.setTo(address);
		message.setSubject("회원가입 인증");
		message.setText("인증번호는"+key+"입니다");
		javaMailSender.send(message);
		
		return String.format("%s",key);
	}

}