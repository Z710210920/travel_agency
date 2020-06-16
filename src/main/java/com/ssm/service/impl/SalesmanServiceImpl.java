package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.SalesmanMapper;
import com.ssm.entity.Salesman;
import com.ssm.service.SalesmanService;
@Service
public class SalesmanServiceImpl implements SalesmanService {
	@Autowired
	private SalesmanMapper salesmanMapper;
	
	public Salesman getSalesmanById(Integer id) {
		return salesmanMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<Salesman> getSalesmanList() {
		return (List<Salesman>) salesmanMapper.selectSalesmanList();
	}

	@Override
	public int addSalesman(Salesman salesman) {
		return salesmanMapper.insert(salesman);
	}

	@Override
	public int updateSalesman(Salesman salesman) {
		return salesmanMapper.updateByPrimaryKey(salesman);
	}

	@Override
	public int delSalesman(Integer id) {
		return salesmanMapper.deleteByPrimaryKey(id);
	}
}
