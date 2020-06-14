package com.ssm.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import com.ssm.entity.*;
import com.sun.xml.internal.xsom.impl.scd.Iterators.Map;
import com.ssm.dao.*;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

@RestController
public class userController{

	@Autowired
	private UserMapper userMapper;
	@RequestMapping(value="/login.do", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView login(User user){
		System.out.println(user.getName() + " " + user.getPassword());
		String pwd = user.getPassword();
		user = userMapper.selectByname(user.getName()) ;
		ModelAndView mav= new ModelAndView();
		if(user.getPassword().equals(pwd)) {
			mav.addObject("message", "true");
			if(user.getGrand().intValue()==7) {
				mav.setViewName("admin/index.jsp");
			}
			else{
				mav.addObject("user", user);
				mav.setViewName("/index.jsp");
			}
			return mav;
		}
		else {
			mav.addObject("message", "false");
		}
		

		return mav;
	}
	
	//验证密码
	@RequestMapping(value="/checklogin.do")
	@ResponseBody
	public HashMap<String, String> checklogin(@RequestParam String name, @RequestParam String password){
		System.out.println(name + " " + password);
		HashMap<String, String> map = new HashMap<String, String>();
		User user = userMapper.selectByname(name) ;
		if(user == null) {
			map.put("message", "error");
			System.out.println("error");
			return map;
		}
		if(user.getPassword().equals(password)) {
			map.put("message", "true");
		}
		else {
			map.put("message", "false");
		}
		
		return map;
	}
	//添加用户
	@RequestMapping(value = "/userAdd.do")
	@ResponseBody
	public HashMap<String, String> add_user(User user){

		/* ModelAndView mav= new ModelAndView("redirect:/getalluser.do"); */
		int i = userMapper.insertSelective(user);


		HashMap<String, String> map = new HashMap<String, String>();

		if (i==1) { 
			System.out.println(user.getName()+"注册成功！"); 

			map.put("result","true");
		} 
		else { 
			System.out.println(user.getName()+"注册失败！");
			map.put("result", "false"); 
		}

		return map;	
	}

	@RequestMapping(value="/getalluser.do", method = RequestMethod.GET)
	public ModelAndView getalluser(){
		ModelAndView mav= new ModelAndView("admin/user.jsp");
		List<User> userList = userMapper.selectall();
		mav.addObject("userList", userList);
		return mav;
	}

	@RequestMapping(value="/finduserbyname.do", method = RequestMethod.POST)
	public ModelAndView getuserbyname(User user){
		ModelAndView mav= new ModelAndView("admin/user.jsp");
		List<User> userList = null;
		if(user.getName().equals("")||user.getName()==null) {
			userList = userMapper.selectall();
		}
		else {
			user = userMapper.selectByname(user.getName()) ;
			if(user!=null) {
				userList =new ArrayList<User>();
				userList.add(user);
			}
		}
		mav.addObject("userList", userList);
		return mav;
	}

	@RequestMapping(value="/getUser.do", method = RequestMethod.GET)
	public ModelAndView getuserbyid(String id, String grand){
		ModelAndView mav;
		if(grand.equals("7")) {
			mav= new ModelAndView("admin/userEdit.jsp");
		}
		else{
			mav= new ModelAndView("userEdit.jsp");
		}
		User user = userMapper.selectByPrimaryKey(Integer.valueOf(id));
		mav.addObject("user", user);
		return mav;
	}

	// 修改用户
	@RequestMapping(value = "/update_user.do")
	@ResponseBody
	public HashMap<String, String> edit_user(User user){

		/* ModelAndView mav= new ModelAndView("redirect:/getalluser.do"); */
		if(user.getPassword().equals("")) {
			user.setPassword(null);
		}
		int i = userMapper.updateByPrimaryKeySelective(user);


		HashMap<String, String> map = new HashMap<String, String>();

		if (i==1) { 
			System.out.println(user.getId()+"修改成功！"); 

			map.put("result","true");
		} 
		else { 
			System.out.println(user.getId()+"修改失败！");
			map.put("result", "false"); 
		}

		return map;	
	}

	//删除用户
	@RequestMapping(value="/deluser.do")
	@ResponseBody
	public User delUser(@RequestBody User user) {
		int row = userMapper.deleteByPrimaryKey(user.getId());
		if (row > 0) {
			return user;
		} else {
			user.setId(0);
			return user;
		}
	}
}
