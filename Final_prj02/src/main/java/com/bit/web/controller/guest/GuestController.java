
package com.bit.web.controller.guest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/guest/")
public class GuestController {

	@RequestMapping("signup")
	public String signup() {
		return"guest.signup";
	}
	@RequestMapping("login")
	public String login() {
		return"guest.login";
	}
}
