package com.ssm.entity;

public class Tours_route {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tours_route.id
     *
     * @mbg.generated
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tours_route.title
     *
     * @mbg.generated
     */
    private String title;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tours_route.route
     *
     * @mbg.generated
     */
    private String route;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tours_route.unit_price
     *
     * @mbg.generated
     */
    private Float unitPrice;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tours_route.days_count
     *
     * @mbg.generated
     */
    private Integer daysCount;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tours_route.img_file
     *
     * @mbg.generated
     */
    private String imgFile;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tours_route.id
     *
     * @return the value of tours_route.id
     *
     * @mbg.generated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tours_route.id
     *
     * @param id the value for tours_route.id
     *
     * @mbg.generated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tours_route.title
     *
     * @return the value of tours_route.title
     *
     * @mbg.generated
     */
    public String getTitle() {
        return title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tours_route.title
     *
     * @param title the value for tours_route.title
     *
     * @mbg.generated
     */
    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tours_route.route
     *
     * @return the value of tours_route.route
     *
     * @mbg.generated
     */
    public String getRoute() {
        return route;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tours_route.route
     *
     * @param route the value for tours_route.route
     *
     * @mbg.generated
     */
    public void setRoute(String route) {
        this.route = route == null ? null : route.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tours_route.unit_price
     *
     * @return the value of tours_route.unit_price
     *
     * @mbg.generated
     */
    public Float getUnitPrice() {
        return unitPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tours_route.unit_price
     *
     * @param unitPrice the value for tours_route.unit_price
     *
     * @mbg.generated
     */
    public void setUnitPrice(Float unitPrice) {
        this.unitPrice = unitPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tours_route.days_count
     *
     * @return the value of tours_route.days_count
     *
     * @mbg.generated
     */
    public Integer getDaysCount() {
        return daysCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tours_route.days_count
     *
     * @param daysCount the value for tours_route.days_count
     *
     * @mbg.generated
     */
    public void setDaysCount(Integer daysCount) {
        this.daysCount = daysCount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tours_route.img_file
     *
     * @return the value of tours_route.img_file
     *
     * @mbg.generated
     */
    public String getImgFile() {
        return imgFile;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tours_route.img_file
     *
     * @param imgFile the value for tours_route.img_file
     *
     * @mbg.generated
     */
    public void setImgFile(String imgFile) {
        this.imgFile = imgFile == null ? null : imgFile.trim();
    }
}