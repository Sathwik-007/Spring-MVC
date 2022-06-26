package com.sathwik.logincontrollers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	
	@RequestMapping(value="/loginpage", method=RequestMethod.GET)
	public String respondWithLoginView() {
		return "login";
	}
	
	@RequestMapping(value="/loginpage", method=RequestMethod.POST)
	public String respondWithWelcomeView() {
		return "welcome";
	}
}

// Run as : maven build

//http://localhost:8080/practise/loginpage

// Run as : Run on server

//http://localhost:8080/<artifact-id>/practise/loginpage