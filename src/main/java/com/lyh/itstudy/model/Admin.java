package com.lyh.itstudy.model;

/**
 * @author lyh
 * @date 2020/3/12 -18:02
 */

public class Admin {

    private Integer admin_id;
    private String adminname;
    private String adminpassword;

    public Admin(Integer admin_id, String adminname, String adminpassword) {
        this.admin_id = admin_id;
        this.adminname = adminname;
        this.adminpassword = adminpassword;
    }

    public Admin() {
    }

    public Integer getAdmin_id() {
        return admin_id;
    }

    public void setAdmin_id(Integer admin_id) {
        this.admin_id = admin_id;
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
                "admin_id=" + admin_id +
                ", adminname='" + adminname + '\'' +
                ", adminpassword='" + adminpassword + '\'' +
                '}';
    }
}
