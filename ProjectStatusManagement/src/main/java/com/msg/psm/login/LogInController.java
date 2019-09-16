package com.msg.psm.login;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogInController {

	@ResponseBody
	@RequestMapping("/login.html")
	public ModelAndView loginPage() {
		return new ModelAndView("login");
	}
	
}
