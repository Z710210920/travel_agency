package com.ssm.entity;

import java.util.Date;

public class Salesman {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column user.id
	 * @mbg.generated
	 */
	private Integer id;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column user.name
	 * @mbg.generated
	 */
	private String name;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column user.sex
	 * @mbg.generated
	 */
	private String sex;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column user.password
	 * @mbg.generated
	 */
	private String password;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column user.province
	 * @mbg.generated
	 */
	private String province;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column user.city
	 * @mbg.generated
	 */
	private String city;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column user.address
	 * @mbg.generated
	 */
	private String address;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column user.phone
	 * @mbg.generated
	 */
	private String phone;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column user.idnumber
	 * @mbg.generated
	 */
	private String idnumber;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column user.fr_phone_nunber
	 * @mbg.generated
	 */
	private String frPhoneNunber;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column user.GRAND
	 * @mbg.generated
	 */
	private Integer grand;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column user.id
	 * @return  the value of user.id
	 * @mbg.generated
	 */
	
	private Float performance;
	
	public Float getPerformance() {
		return performance;
	}
	
	public void setPerformance(Float performance) {
		this.performance = performance;
	}
	
	public Integer getId() {
		return id;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column user.id
	 * @param id  the value for user.id
	 * @mbg.generated
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column user.name
	 * @return  the value of user.name
	 * @mbg.generated
	 */
	public String getName() {
		return name;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column user.name
	 * @param name  the value for user.name
	 * @mbg.generated
	 */
	public void setName(String name) {
		this.name = name == null ? null : name.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column user.sex
	 * @return  the value of user.sex
	 * @mbg.generated
	 */
	public String getSex() {
		return sex;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column user.sex
	 * @param sex  the value for user.sex
	 * @mbg.generated
	 */
	public void setSex(String sex) {
		this.sex = sex == null ? null : sex.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column user.password
	 * @return  the value of user.password
	 * @mbg.generated
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column user.password
	 * @param password  the value for user.password
	 * @mbg.generated
	 */
	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column user.province
	 * @return  the value of user.province
	 * @mbg.generated
	 */
	public String getProvince() {
		return province;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column user.province
	 * @param province  the value for user.province
	 * @mbg.generated
	 */
	public void setProvince(String province) {
		this.province = province == null ? null : province.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column user.city
	 * @return  the value of user.city
	 * @mbg.generated
	 */
	public String getCity() {
		return city;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column user.city
	 * @param city  the value for user.city
	 * @mbg.generated
	 */
	public void setCity(String city) {
		this.city = city == null ? null : city.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column user.address
	 * @return  the value of user.address
	 * @mbg.generated
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column user.address
	 * @param address  the value for user.address
	 * @mbg.generated
	 */
	public void setAddress(String address) {
		this.address = address == null ? null : address.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column user.phone
	 * @return  the value of user.phone
	 * @mbg.generated
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column user.phone
	 * @param phone  the value for user.phone
	 * @mbg.generated
	 */
	public void setPhone(String phone) {
		this.phone = phone == null ? null : phone.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column user.idnumber
	 * @return  the value of user.idnumber
	 * @mbg.generated
	 */
	public String getIdnumber() {
		return idnumber;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column user.idnumber
	 * @param idnumber  the value for user.idnumber
	 * @mbg.generated
	 */
	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber == null ? null : idnumber.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column user.fr_phone_nunber
	 * @return  the value of user.fr_phone_nunber
	 * @mbg.generated
	 */
	public String getFrPhoneNunber() {
		return frPhoneNunber;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column user.fr_phone_nunber
	 * @param frPhoneNunber  the value for user.fr_phone_nunber
	 * @mbg.generated
	 */
	public void setFrPhoneNunber(String frPhoneNunber) {
		this.frPhoneNunber = frPhoneNunber == null ? null : frPhoneNunber.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column user.GRAND
	 * @return  the value of user.GRAND
	 * @mbg.generated
	 */
	public Integer getGrand() {
		return grand;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column user.GRAND
	 * @param grand  the value for user.GRAND
	 * @mbg.generated
	 */
	public void setGrand(Integer grand) {
		this.grand = grand;
	}
}