package com.ssm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class Text implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO �Զ����ɵķ������
		ModelAndView mv = new ModelAndView();
		mv.addObject("message", "Hello World");
		mv.setViewName("index.jsp");
		return mv;
	}

}
