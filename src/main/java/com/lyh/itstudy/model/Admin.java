package com.lyh.itstudy.model;

/**
 * @author lyh
 * @date 2020/3/12 -18:02
 */

public class Admin {

    private Integer id;
    private String adminname;
    private String adminpassword;

    public Admin(Integer id, String adminname, String adminpassword) {
        this.id = id;
        this.adminname = adminname;
        this.adminpassword = adminpassword;
    }

    public Admin() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAdminname() {
        return adminname;
    }

    public void setAdminname(String adminname) {
        this.adminname = adminname;
    }

    public String getAdminpassword() {
        return adminpassword;
    }

    public void setAdminpassword(String adminpassword) {
        this.adminpassword = adminpassword;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", adminname='" + adminname + '\'' +
                ", adminpassword='" + adminpassword + '\'' +
                '}';
    }
}
