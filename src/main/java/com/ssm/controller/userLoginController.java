package com.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import com.ssm.entity.*;
import com.ssm.dao.*;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;
@RestController
public class userLoginController{

	@RequestMapping("/login")
	public String login(User user){
		System.out.println(user.getName() + " " + user.getPassword());
		return "ok";
	}

}
