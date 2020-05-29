package com.ssm.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * ToursGuide entity. @author MyEclipse Persistence Tools
 */

public class ToursGuide implements java.io.Serializable {

	// Fields

	private Integer guideId;
	private String guideName;
	private String guideSex;
	private Integer guideAge;
	private String guideInfo;
	private Set toursGroups = new HashSet(0);

	// Constructors

	/** default constructor */
	public ToursGuide() {
	}

	/** full constructor */
	public ToursGuide(String guideName, String guideSex, Integer guideAge,
			String guideInfo, Set toursGroups) {
		this.guideName = guideName;
		this.guideSex = guideSex;
		this.guideAge = guideAge;
		this.guideInfo = guideInfo;
		this.toursGroups = toursGroups;
	}

	// Property accessors

	public Integer getGuideId() {
		return this.guideId;
	}

	public void setGuideId(Integer guideId) {
		this.guideId = guideId;
	}

	public String getGuideName() {
		return this.guideName;
	}

	public void setGuideName(String guideName) {
		this.guideName = guideName;
	}

	public String getGuideSex() {
		return this.guideSex;
	}

	public void setGuideSex(String guideSex) {
		this.guideSex = guideSex;
	}

	public Integer getGuideAge() {
		return this.guideAge;
	}

	public void setGuideAge(Integer guideAge) {
		this.guideAge = guideAge;
	}

	public String getGuideInfo() {
		return this.guideInfo;
	}

	public void setGuideInfo(String guideInfo) {
		this.guideInfo = guideInfo;
	}

	public Set getToursGroups() {
		return this.toursGroups;
	}

	public void setToursGroups(Set toursGroups) {
		this.toursGroups = toursGroups;
	}

}