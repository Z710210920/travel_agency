package com.ssm.entity;

public class Tours_guide {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tours_guide.guide_id
     *
     * @mbg.generated
     */
    private Integer guideId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tours_guide.guide_name
     *
     * @mbg.generated
     */
    private String guideName;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tours_guide.guide_sex
     *
     * @mbg.generated
     */
    private String guideSex;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tours_guide.guide_age
     *
     * @mbg.generated
     */
    private Integer guideAge;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tours_guide.guide_info
     *
     * @mbg.generated
     */
    private String guideInfo;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tours_guide.guide_id
     *
     * @return the value of tours_guide.guide_id
     *
     * @mbg.generated
     */
    public Integer getGuideId() {
        return guideId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tours_guide.guide_id
     *
     * @param guideId the value for tours_guide.guide_id
     *
     * @mbg.generated
     */
    public void setGuideId(Integer guideId) {
        this.guideId = guideId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tours_guide.guide_name
     *
     * @return the value of tours_guide.guide_name
     *
     * @mbg.generated
     */
    public String getGuideName() {
        return guideName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tours_guide.guide_name
     *
     * @param guideName the value for tours_guide.guide_name
     *
     * @mbg.generated
     */
    public void setGuideName(String guideName) {
        this.guideName = guideName == null ? null : guideName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tours_guide.guide_sex
     *
     * @return the value of tours_guide.guide_sex
     *
     * @mbg.generated
     */
    public String getGuideSex() {
        return guideSex;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tours_guide.guide_sex
     *
     * @param guideSex the value for tours_guide.guide_sex
     *
     * @mbg.generated
     */
    public void setGuideSex(String guideSex) {
        this.guideSex = guideSex == null ? null : guideSex.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tours_guide.guide_age
     *
     * @return the value of tours_guide.guide_age
     *
     * @mbg.generated
     */
    public Integer getGuideAge() {
        return guideAge;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tours_guide.guide_age
     *
     * @param guideAge the value for tours_guide.guide_age
     *
     * @mbg.generated
     */
    public void setGuideAge(Integer guideAge) {
        this.guideAge = guideAge;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tours_guide.guide_info
     *
     * @return the value of tours_guide.guide_info
     *
     * @mbg.generated
     */
    public String getGuideInfo() {
        return guideInfo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tours_guide.guide_info
     *
     * @param guideInfo the value for tours_guide.guide_info
     *
     * @mbg.generated
     */
    public void setGuideInfo(String guideInfo) {
        this.guideInfo = guideInfo == null ? null : guideInfo.trim();
    }
}