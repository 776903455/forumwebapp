package com.lyh.itstudy.model;

import javax.validation.constraints.*;
import java.io.Serializable;
import java.util.List;

public class User {

    @Pattern(regexp="[0-9]{6,12}",message = "用户名长度6-12之间")
  @NotNull(message="名字不能为空")
    private String username;


    @Pattern(regexp = "([a-zA-Z0-9]{6,15})",message ="密码长度6-15之间" )
   @NotNull(message="名字不能为空")
    private String password;



    @Pattern(regexp = "[a-zA-Z0-9]+@[a-zA-Z0-9]+\\.[a-zA-Z]{2,5}",message = "邮箱格式错误")
   @Email(message="必须是合法的邮箱地址")
    private String email;


    @Pattern(regexp="[1][3,8][3,6,9][0-9]{8}",message="无效的电话号码")
    private String phone;

    private Integer uid;
    private  Integer exchangenumber;

   private Integer qdstatus;

   private List<Article> articles;
    private String yzm;

    private  String sex;

    private Integer score;

    private String addr;

    private Integer state;

    private String code;

    private String uimage;

    private String uname;

    public String getSex() {
        return sex;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public List<Article> getArticles() {
        return articles;
    }

    public void setArticles(List<Article> articles) {
        this.articles = articles;
    }

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

    public void setSex(String sex) {
        this.sex = sex;
    }

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

    public Integer getUid() {
        return uid;
    }


    public void setUid(Integer uid) {
        this.uid = uid;
    }


    public String getUsername() {
        return username;
    }


    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }


    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }


    public Integer getScore() {
        return score;
    }


    public void setScore(Integer score) {
        this.score = score;
    }


    public String getPhone() {
        return phone;
    }


    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }


    public String getAddr() {
        return addr;
    }


    public void setAddr(String addr) {
        this.addr = addr == null ? null : addr.trim();
    }


    public Integer getState() {
        return state;
    }


    public void setState(Integer state) {
        this.state = state;
    }


    public String getCode() {
        return code;
    }


    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }


    public String getEmail() {
        return email;
    }


    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }


    public String getUimage() {
        return uimage;
    }


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


