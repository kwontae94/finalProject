package com.bit.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.web.service.JoinMemberCancel;
import com.bit.web.service.JoinMemberShip;

import lombok.Setter;

@Controller
@RequestMapping("/")
public class JoinController {

	@Setter(onMethod_ = {@Autowired})
	private JoinMemberShip joinMemberShip; 
	
	@Setter(onMethod_ = {@Autowired})
	private JoinMemberCancel joinMemberCancel;
	
	@RequestMapping("join")
	public String join(	@RequestParam("account") String account,	//회원가입-계정
						@RequestParam("password") String password,	//회원가입-비밀번호
						@RequestParam("name") String name,	 		//회원가입-회원이름
						@RequestParam("email") String email, 		//회원가입-이메일
						@RequestParam("btn") String btn,			//회원가입-진행 또는 취소 
						@RequestParam("check") String check,		//회원가입-동의 또는 미동의 
						Model model)
	{
		if(btn.contentEquals("취소")) {	 //회원가입을 취소 할 경우,
			
			joinMemberCancel.deleteId(account);//회원가입 취소시, 중복검사 때 저장된 ID삭제를 위한 메소드 호출
			
		}else {							 //회원가입을 진행 할 경우,
			
			if(check.contentEquals("미동의")) {	//회원가입의 조건의 미동의 할 경우,
				
				model.addAttribute("new_account", account);
				model.addAttribute("new_password", password);
				model.addAttribute("new_name", name);
				model.addAttribute("new_email", email);
				model.addAttribute("error", "true");	//오류 메세지 전송
				
				return"guest.signup";			//회원가입 실패시, 회원가입 페이지로 이동
				
			}else {								//회원가입의 조건을 동의할 경우,
				
				joinMemberShip.updateInform(account, password, name, email);
			}
			
		}
		return "home.home";	//회원가입 성공시, 홈페이지 이동
	}
}
