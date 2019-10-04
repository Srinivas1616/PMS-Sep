package com.msg.psm.login;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class LogInController {

	@ResponseBody
	@RequestMapping("/login.html")
	public ModelAndView loginPage() {
		return new ModelAndView("login");
	}
	
}

