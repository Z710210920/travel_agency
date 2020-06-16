package com.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.PerformanceMapper;
import com.ssm.entity.Performance;
import com.ssm.service.PerformanceService;
@Service
public class PerformanceServiceImpl implements PerformanceService {
	@Autowired
	private PerformanceMapper performancemapper;

	/*@Override
	public int addPerformance(Performance performance) {
		return performancemapper.insert(performance);
	}*/
	public Performance getSalesmanById(Integer id) {
		return performancemapper.selectByPrimaryKey(id);
	}

	@Override
	public int updatePerformance(Performance performance) {
		return performancemapper.updateByPrimaryKey(performance);
	}

	/*@Override
	public int delPerformance(Integer id) {
		return performancemapper.deleteByPrimaryKey(id);
	}*/
	

}
