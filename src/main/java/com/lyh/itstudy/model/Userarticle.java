package com.lyh.itstudy.model;

/**
 * @author lyh
 * @date 2020/3/29 -10:49
 */

public class Userarticle {

    private Integer uid;
    private String  artid;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getArtid() {
        return artid;
    }

    public void setArtid(String artid) {
        this.artid = artid;
    }


    @Override
    public String toString() {
        return "Userarticle{" +
                "uid=" + uid +
                ", artid='" + artid + '\'' +
                '}';
    }
}
