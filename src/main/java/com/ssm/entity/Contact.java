package com.ssm.entity;

public class Contact {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column contact.id
     *
     * @mbg.generated
     */
    private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column contact.userName
     *
     * @mbg.generated
     */
    private String username;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column contact.userEmail
     *
     * @mbg.generated
     */
    private String useremail;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column contact.userPhone
     *
     * @mbg.generated
     */
    private String userphone;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column contact.userMsg
     *
     * @mbg.generated
     */
    private String usermsg;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column contact.id
     *
     * @return the value of contact.id
     *
     * @mbg.generated
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column contact.id
     *
     * @param id the value for contact.id
     *
     * @mbg.generated
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column contact.userName
     *
     * @return the value of contact.userName
     *
     * @mbg.generated
     */
    public String getUsername() {
        return username;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column contact.userName
     *
     * @param username the value for contact.userName
     *
     * @mbg.generated
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column contact.userEmail
     *
     * @return the value of contact.userEmail
     *
     * @mbg.generated
     */
    public String getUseremail() {
        return useremail;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column contact.userEmail
     *
     * @param useremail the value for contact.userEmail
     *
     * @mbg.generated
     */
    public void setUseremail(String useremail) {
        this.useremail = useremail == null ? null : useremail.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column contact.userPhone
     *
     * @return the value of contact.userPhone
     *
     * @mbg.generated
     */
    public String getUserphone() {
        return userphone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column contact.userPhone
     *
     * @param userphone the value for contact.userPhone
     *
     * @mbg.generated
     */
    public void setUserphone(String userphone) {
        this.userphone = userphone == null ? null : userphone.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column contact.userMsg
     *
     * @return the value of contact.userMsg
     *
     * @mbg.generated
     */
    public String getUsermsg() {
        return usermsg;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column contact.userMsg
     *
     * @param usermsg the value for contact.userMsg
     *
     * @mbg.generated
     */
    public void setUsermsg(String usermsg) {
        this.usermsg = usermsg == null ? null : usermsg.trim();
    }
}