package com.ssm.entity;

public class Place {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column place.id
     *
     * @mbg.generated
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column place.city_id
     *
     * @mbg.generated
     */
    private Integer cityId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column place.name
     *
     * @mbg.generated
     */
    private String name;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column place.info
     *
     * @mbg.generated
     */
    private String info;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column place.level
     *
     * @mbg.generated
     */
    private String level;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column place.id
     *
     * @return the value of place.id
     *
     * @mbg.generated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column place.id
     *
     * @param id the value for place.id
     *
     * @mbg.generated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column place.city_id
     *
     * @return the value of place.city_id
     *
     * @mbg.generated
     */
    public Integer getCityId() {
        return cityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column place.city_id
     *
     * @param cityId the value for place.city_id
     *
     * @mbg.generated
     */
    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column place.name
     *
     * @return the value of place.name
     *
     * @mbg.generated
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column place.name
     *
     * @param name the value for place.name
     *
     * @mbg.generated
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column place.info
     *
     * @return the value of place.info
     *
     * @mbg.generated
     */
    public String getInfo() {
        return info;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column place.info
     *
     * @param info the value for place.info
     *
     * @mbg.generated
     */
    public void setInfo(String info) {
        this.info = info == null ? null : info.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column place.level
     *
     * @return the value of place.level
     *
     * @mbg.generated
     */
    public String getLevel() {
        return level;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column place.level
     *
     * @param level the value for place.level
     *
     * @mbg.generated
     */
    public void setLevel(String level) {
        this.level = level == null ? null : level.trim();
    }
}