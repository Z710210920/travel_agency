package com.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.service.PerformanceService;
import com.ssm.service.SalesmanService;
import com.ssm.entity.*;

@Controller
public class SalesmanController {
	/**
	 * 1.在JDBC配置文件中的url里加上allowMultiQueries=true字段
	 * 2.注意pom.xml中新加的依赖包
	 * 3.页面功能经过测试均可用
	 * 4.js的身份证验证和手机号码验证存在中文乱码问题，无法解决
	 * 5.查询推销员个人信息链接如下：localhost:8080/travel_agency/salesman?id=99
	 * 6.注意web.xml的文件头是2.5
	 * 7.在客户订购成功时访问/updatePerformance?id=${id}可为id为${id}的推销员的业绩+0.1
	 * 8.salesman_promote.jsp中，“推广该链接：http://localhost:8080/travel_agency/xxx?id=99”
	 * 	此处的XXX为要跳转的订购网页，请注意转递业务员id
	 * 9.若想修改业绩增加的数值，在“PerformanceMapper.xml”中找到id为updateByPrimaryKey的update标签，修改
	 * 	其中的“set performance = performance + 0.1”加号后的数字即可
	 * 10.插入、删除推销员的同时也会对业绩表进行对应修改，主键是推销员id，具体SQL请参照SalesmanMapper.xml
	 */
	@Autowired
	private SalesmanService salesmanService;
	@Autowired
	private PerformanceService performanceservice;
	//访问该request并附带id可查询推销员个人信息
	@RequestMapping(value="/salesman.do", method = RequestMethod.GET)
	public ModelAndView getSalesmanById(@RequestParam(value="id", required = true) Integer id) {
		Salesman salesman = salesmanService.getSalesmanById(id);
		ModelAndView mav = new ModelAndView();
		if (salesman == null) {
			mav.setViewName("fail");
			
			return mav;
		} else {
			mav.addObject("id", salesman.getId());
			mav.addObject("name", salesman.getName());
			mav.addObject("sex", salesman.getSex());
			mav.addObject("phone", salesman.getPhone());
			mav.addObject("idnumber", salesman.getIdnumber());
			mav.addObject("performance", salesman.getPerformance());
			mav.setViewName("salesman_query.jsp");
			return mav;
		}
	}
	//获取全部推销员
	@RequestMapping(value="/salesmanList.do")
	public ModelAndView getSalesmanList() {
		List<Salesman> salesmanList = salesmanService.getSalesmanList();
		ModelAndView mav = new ModelAndView();
		if (salesmanList == null) {
			mav.setViewName("fail");
			return mav;
		} else {
			mav.addObject("salesmanList", salesmanList);
			mav.setViewName("admin/salesman_MGT.jsp");
			return mav;
		}
	}
	//添加推销员
	@RequestMapping(value="/addSalesman.do", method=RequestMethod.POST)
	public ModelAndView addSalesman(Salesman salesman) {
		salesmanService.addSalesman(salesman);
		ModelAndView mav = new ModelAndView("redirect:salesmanList.do");
		return mav;
	}
	//重定向到salesman_MGT_add.jsp
	@RequestMapping(value="/toAddSalesman")
	public ModelAndView toAddSalesman() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/salesman_MGT_add.jsp");
		return mav;
	}
	//删除推销员
	@RequestMapping(value="/delSalesman.do")
	@ResponseBody
	public Salesman delSalesman(@RequestBody Salesman salesman) {
		int row = salesmanService.delSalesman(salesman.getId());
		if (row > 0) {
			return salesman;
		} else {
			salesman.setId(0);
			return salesman;
		}
	}
	//编辑推销员
	@RequestMapping(value="/editSalesman.do")
	public ModelAndView editSalesman(Salesman salesman) {
		salesmanService.updateSalesman(salesman);
		ModelAndView mav = new ModelAndView("redirect:salesmanList.do");
		return mav;
	}
	//重定向到salesman_MGT_edit.jsp并传递选中的员工的工号
		@RequestMapping(value="/toEditSalesman.do")
		public ModelAndView toEditSalesman(@RequestParam(value="id", required = true) Integer id) {
			Salesman salesman = salesmanService.getSalesmanById(id);
			ModelAndView mav = new ModelAndView();
			mav.addObject("id",id);
			mav.addObject("name", salesman.getName());
			mav.addObject("sex", salesman.getSex());
			mav.addObject("phone", salesman.getPhone());
			mav.addObject("idnumber",salesman.getIdnumber());
			//����ѡ�е�Ա���Ĺ���
			mav.setViewName("admin/salesman_MGT_edit.jsp");
			return mav;
		}
	//访问该request则业绩+0.1，需要当前推销员ID
	@RequestMapping(value="/updatePerformance.do", method = RequestMethod.GET)
	public void updatePerformance(@RequestParam(value="id", required = false) Integer id) {
		Performance performance = new Performance();
		performance.setId(id);
		performanceservice.updatePerformance(performance);
	}
}