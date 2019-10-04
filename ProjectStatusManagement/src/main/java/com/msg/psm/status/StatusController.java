package com.msg.psm.status;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@org.springframework.web.bind.annotation.RestController
public class StatusController {
	
	@RequestMapping("/status")
	public ModelAndView login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_STATUS");
		return new ModelAndView("status");
	}

}
