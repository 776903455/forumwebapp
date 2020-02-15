package com.lyh.itstudy.model;

import java.io.Serializable;

public class User {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_user.uid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Integer uid;

    private  Integer exchangenumber;

   private Integer qdstatus;

    public Integer getQdstatus() {
        return qdstatus;
    }

    public void setQdstatus(Integer qdstatus) {
        this.qdstatus = qdstatus;
    }

    public Integer getExchangenumber() {
        return exchangenumber;
    }

    public void setExchangenumber(Integer exchangenumber) {
        this.exchangenumber = exchangenumber;
    }

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_user.username
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private String username;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_user.password
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private String password;

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    private String yzm;
    private  String sex;

    public String getActivetime() {
        return activetime;
    }

    public void setActivetime(String activetime) {
        this.activetime = activetime;
    }

    private String activetime;

    public String getYzm() {
        return yzm;
    }

    public void setYzm(String yzm) {
        this.yzm = yzm;
    }

    private String regtime;

    public String getRegtime() {
        return regtime;
    }

    public void setRegtime(String regtime) {
        this.regtime = regtime;
    }

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_user.score
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Integer score;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_user.phone
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private String phone;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_user.addr
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private String addr;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_user.state
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Integer state;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_user.code
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private String code;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_user.email
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private String email;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_user.uimage
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private String uimage;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_user.uid
     *
     * @return the value of tbl_user.uid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Integer getUid() {
        return uid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_user.uid
     *
     * @param uid the value for tbl_user.uid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_user.username
     *
     * @return the value of tbl_user.username
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public String getUsername() {
        return username;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_user.username
     *
     * @param username the value for tbl_user.username
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_user.password
     *
     * @return the value of tbl_user.password
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public String getPassword() {
        return password;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_user.password
     *
     * @param password the value for tbl_user.password
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_user.score
     *
     * @return the value of tbl_user.score
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Integer getScore() {
        return score;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_user.score
     *
     * @param score the value for tbl_user.score
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setScore(Integer score) {
        this.score = score;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_user.phone
     *
     * @return the value of tbl_user.phone
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public String getPhone() {
        return phone;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_user.phone
     *
     * @param phone the value for tbl_user.phone
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_user.addr
     *
     * @return the value of tbl_user.addr
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public String getAddr() {
        return addr;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_user.addr
     *
     * @param addr the value for tbl_user.addr
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setAddr(String addr) {
        this.addr = addr == null ? null : addr.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_user.state
     *
     * @return the value of tbl_user.state
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Integer getState() {
        return state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_user.state
     *
     * @param state the value for tbl_user.state
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setState(Integer state) {
        this.state = state;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_user.code
     *
     * @return the value of tbl_user.code
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public String getCode() {
        return code;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_user.code
     *
     * @param code the value for tbl_user.code
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_user.email
     *
     * @return the value of tbl_user.email
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public String getEmail() {
        return email;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_user.email
     *
     * @param email the value for tbl_user.email
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_user.uimage
     *
     * @return the value of tbl_user.uimage
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public String getUimage() {
        return uimage;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_user.uimage
     *
     * @param uimage the value for tbl_user.uimage
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setUimage(String uimage) {
        this.uimage = uimage == null ? null : uimage.trim();
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", yzm='" + yzm + '\'' +
                ", sex='" + sex + '\'' +
                ", activetime='" + activetime + '\'' +
                ", regtime='" + regtime + '\'' +
                ", score=" + score +
                ", phone='" + phone + '\'' +
                ", addr='" + addr + '\'' +
                ", state=" + state +
                ", code='" + code + '\'' +
                ", email='" + email + '\'' +
                ", uimage='" + uimage + '\'' +
                '}';
    }
}


