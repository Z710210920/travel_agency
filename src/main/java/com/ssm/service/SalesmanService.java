package com.ssm.service;

import java.util.List;

import com.ssm.entity.*;
public interface SalesmanService {
	//��������Ա���Ż�ȡ����Ա��Ϣ
	public Salesman getSalesmanById(Integer id);
	//��ȡȫ������Ա
	public List<Salesman> getSalesmanList();
	//�������Ա
	public int addSalesman(Salesman salesman);
	//��������Ա
	public int updateSalesman(Salesman salesman);
	//ɾ������Ա
	public int delSalesman(Integer id);
}
