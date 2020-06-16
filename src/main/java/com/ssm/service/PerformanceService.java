package com.ssm.service;


import com.ssm.entity.*;

public interface PerformanceService {
	//���ҵ��
	//public int addPerformance(Performance performance);
	//����ҵ��
	public int updatePerformance(Performance performance);
	//��ȡҵ��
	public Performance getSalesmanById(Integer id);
	//ɾ��ҵ��
	//public int delPerformance(Integer id);
}
