package com.ssm.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
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
public class postController {

	@Autowired
	private PostMapper postMapper;


	/*
	 * @RequestMapping(value = "/login.do", method = RequestMethod.POST)
	 * 
	 * @ResponseBody public ModelAndView login(User user) {
	 * System.out.println(user.getName() + " " + user.getPassword()); String pwd =
	 * user.getPassword(); user = userMapper.selectByname(user.getName());
	 * ModelAndView mav = new ModelAndView(); if (user.getPassword().equals(pwd)) {
	 * mav.addObject("message", "true"); if (user.getGrand().intValue() == 7) {
	 * mav.setViewName("admin/index"); } else { mav.addObject("user", user);
	 * mav.setViewName("/index"); } return mav; } else { mav.addObject("message",
	 * "false"); }
	 * 
	 * return mav; }
	 * 
	 * // 验证密码
	 * 
	 * @RequestMapping(value = "/checklogin.do")
	 * 
	 * @ResponseBody public HashMap<String, String> checklogin(@RequestParam String
	 * name, @RequestParam String password) { System.out.println(name + " " +
	 * password); HashMap<String, String> map = new HashMap<String, String>(); User
	 * user = userMapper.selectByname(name); if (user == null) { map.put("message",
	 * "error"); System.out.println("error"); return map; } if
	 * (user.getPassword().equals(password)) { map.put("message", "true"); } else {
	 * map.put("message", "false"); }
	 * 
	 * return map; }
	 */
	// 添加用户

	@RequestMapping(value = "/postAdd.do")
	@ResponseBody 
	public HashMap<String, String> add_post(Post post) {
		/*
		 * ModelAndView mav; if(post.getParentId()!=null){ mav = new
		 * ModelAndView("redirect:/detailed.do?id="+post.getParentId()+"&userName="+post
		 * .getUserName()); } else { new
		 * ModelAndView("redirect:/getallpost.do?userName="+post.getUserName()); }
		 */
		
		//生成当前时间
		Date utilDate  =new Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		post.setCreatetime(sqlDate);
		post.setUpdatetime(sqlDate);
		
		int i = postMapper.insertSelective(post);
		HashMap<String, String> map = new HashMap<String, String>();

		if (i == 1) { System.out.println(post.getTheme() + "发表成功！");

		map.put("result", "true"); } else { System.out.println(post.getTheme() +
				"发表失败！"); map.put("result", "false"); }

		return map;
	}


	@RequestMapping(value = "/getallpost.do", method = RequestMethod.GET)
	public ModelAndView getallpost(String userName) {
		String isadmin;
		if(userName.equals("admin")) {
			isadmin = "admin/";
		}
		else {
			isadmin = "";
		}
		ModelAndView mav = new ModelAndView(isadmin + "forum.jsp?userName=" + userName);
		List<Post> postList = postMapper.selectall();
		mav.addObject("postList", postList);
		return mav;
	}

	
	@RequestMapping(value="/detailed.do")
	public ModelAndView detailed(Integer id, String userName){ 
		String isadmin;
		if(userName.equals("admin")) {
			isadmin = "admin/";
		}
		else {
			isadmin = "";
		}
		ModelAndView mav= new ModelAndView(isadmin+"detailed.jsp?userName="+userName); 
		List<Post> postList = new ArrayList<Post>(); 
		Post post = postMapper.selectByPrimaryKey(id); 
		if(post==null || post.getPostStatus()==false) {
			return null;
		}else {
			mav.addObject("mainpost", post);
			post.setTraffic(post.getTraffic()+1);
			postMapper.updateByPrimaryKeySelective(post);
			postList.addAll(postMapper.selectByParentId(id));
		}
		mav.addObject("postList",postList); 
		return mav; 
	}

	/*
	 * @RequestMapping(value="/getUser.do", method = RequestMethod.GET) public
	 * ModelAndView getpostbyid(String id, String grand){ ModelAndView mav;
	 * if(grand.equals("7")) { mav= new ModelAndView("admin/postEdit"); } else{ mav=
	 * new ModelAndView("postEdit"); } User post =
	 * postMapper.selectByPrimaryKey(Integer.valueOf(id)); mav.addObject("post",
	 * post); return mav; }
	 */
	  
	
	/*
	 * // 修改用户
	 * 
	 * @RequestMapping(value = "/update_user.do")
	 * 
	 * @ResponseBody public HashMap<String, String> edit_user(User user){
	 * 
	 * ModelAndView mav= new ModelAndView("redirect:/getalluser.do");
	 * if(user.getPassword().equals("")) { user.setPassword(null); } int i =
	 * userMapper.updateByPrimaryKeySelective(user);
	 * 
	 * 
	 * HashMap<String, String> map = new HashMap<String, String>();
	 * 
	 * if (i==1) { System.out.println(user.getId()+"修改成功！");
	 * 
	 * map.put("result","true"); } else { System.out.println(user.getId()+"修改失败！");
	 * map.put("result", "false"); }
	 * 
	 * return map; }
	 */
	  
	  //删除用户
	  
	  @RequestMapping(value="/deletepost.do")
	  public ModelAndView delpost(Post post){ 
		  ModelAndView mav;
		  post.setPostStatus(false);
		  int row = postMapper.updateByPrimaryKeySelective(post);
		  post = postMapper.selectByPrimaryKey(post.getId());
		  if(!post.getPostStatus()) {  //false
			  if(post.getParentId()==0) { //删除帖子，跳转到getallpost
				  mav = new ModelAndView("redirect:/getallpost.do?userName="+post.getUserName());
			  }
			  else {                     //删除回复，跳转到detailed
				  mav = new ModelAndView("redirect:/detailed.do?id="+post.getParentId()+"&userName="+post.getUserName());
			  }
		  }
		  else {                         //删除失败，跳转到detailed
			  mav = new ModelAndView();
		  }
		  return mav;
	  }
	 
}
