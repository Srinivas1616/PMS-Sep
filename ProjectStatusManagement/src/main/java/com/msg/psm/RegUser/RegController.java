package com.msg.psm.RegUser;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class RegController {

	@Autowired
	private UserService userService;

	@GetMapping("/")
	public String hello() {
		return "Please enter the correct URL";
	}

	@RequestMapping("/welcome")
	public ModelAndView welcome(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return new ModelAndView("welcomepage");
	}

	@RequestMapping("/register")
	public ModelAndView register(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_REGISTER");
		return new ModelAndView("welcomepage");
	}

	@PostMapping("/save-user")
	public ModelAndView registerUser(@ModelAttribute UserModel user, BindingResult bindingResult,
			HttpServletRequest request) {
		userService.saveMyUser(user);
		request.setAttribute("mode", "MODE_HOME");
		return new ModelAndView("welcomepage");
	}

	@GetMapping("/saveuser")
	public String saveUser(@RequestParam String username, @RequestParam String firstname, @RequestParam String lastname,
			@RequestParam int age, @RequestParam String password) {
		UserModel user = new UserModel(username, firstname, lastname, age, password);
		userService.saveMyUser(user);
		return "The user is saved";
	}

	@GetMapping("/show-users")
	public ModelAndView showAllUsers(HttpServletRequest request) {

		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return new ModelAndView("welcomepage");
	}

	@RequestMapping("/delete-user")
	public ModelAndView deleteUser(@RequestParam int id, HttpServletRequest request) {
		userService.deleteMyUser(id);
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return new ModelAndView("welcomepage");
	}

	@RequestMapping("/edit-user")
	public ModelAndView editUser(@RequestParam int id, HttpServletRequest request) {
		request.setAttribute("user", userService.editUser(id).get());
		request.setAttribute("mode", "MODE_UPDATE");
		return new ModelAndView("welcomepage");
	}

	@RequestMapping("/update-user")
	public ModelAndView updateUser(@RequestParam int id, @RequestParam String username, @RequestParam String firstname,
			@RequestParam String lastname, @RequestParam int age, HttpServletRequest request) {
		userService.updateUser(id, username, firstname, lastname, age);
		request.setAttribute("users", userService.showAllUsers());
		request.setAttribute("mode", "ALL_USERS");
		return new ModelAndView("/welcomepage");

	}

	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_LOGIN");
		return new ModelAndView("welcomepage");
	}

	@RequestMapping("/login-user")
	public ModelAndView loginUser(@ModelAttribute UserModel user, HttpServletRequest request) {
		//UserModel user1 = new UserModel();
		if (userService.findByUsernameAndPassword(user.getUsername(), user.getPassword()) != null) {
			return new ModelAndView("homepage");
		} else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			return new ModelAndView("welcomepage");
		}

	}
}
