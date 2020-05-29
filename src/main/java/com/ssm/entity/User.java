package com.ssm.entity;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String sex;
	private String password;
	private String province;
	private String city;
	private String address;
	private String phone;
	private String idnumber;
	private String frPhoneNunber;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** full constructor */
	public User(String name, String sex, String password, String province,
			String city, String address, String phone, String idnumber,
			String frPhoneNunber) {
		this.name = name;
		this.sex = sex;
		this.password = password;
		this.province = province;
		this.city = city;
		this.address = address;
		this.phone = phone;
		this.idnumber = idnumber;
		this.frPhoneNunber = frPhoneNunber;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getProvince() {
		return this.province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getIdnumber() {
		return this.idnumber;
	}

	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}
	
	public String getFrPhoneNunber() {
		return this.frPhoneNunber;
	}

	public void setFrPhoneNunber(String frPhoneNunber) {
		this.frPhoneNunber = frPhoneNunber;
	}

}