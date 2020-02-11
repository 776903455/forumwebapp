package com.lyh.itstudy.model;

import java.util.Date;
import java.util.List;

public class Article {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_article.aid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Integer aid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_article.aname
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private String aname;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_article.adate
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Date adate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_article.areplay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Integer areplay;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_article.apraise
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Integer apraise;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_article.csid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Integer csid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_article.uid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Integer uid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_article.amoney
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Integer amoney;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_article.atxte
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private String atxte;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_article.aid
     *
     * @return the value of tbl_article.aid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Integer getAid() {
        return aid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_article.aid
     *
     * @param aid the value for tbl_article.aid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setAid(Integer aid) {
        this.aid = aid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_article.aname
     *
     * @return the value of tbl_article.aname
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public String getAname() {
        return aname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_article.aname
     *
     * @param aname the value for tbl_article.aname
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setAname(String aname) {
        this.aname = aname == null ? null : aname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_article.adate
     *
     * @return the value of tbl_article.adate
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Date getAdate() {
        return adate;
    }
    private User user;

    public User getUser() {
        return user;
    }

    private List<Replay> replist;

    public List<Replay> getReplist() {
        return replist;
    }

    public void setReplist(List<Replay> replist) {
        this.replist = replist;
    }

    public void setUser(User user) {
        this.user = user;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_article.adate
     *
     * @param adate the value for tbl_article.adate
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setAdate(Date adate) {
        this.adate = adate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_article.areplay
     *
     * @return the value of tbl_article.areplay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Integer getAreplay() {
        return areplay;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_article.areplay
     *
     * @param areplay the value for tbl_article.areplay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setAreplay(Integer areplay) {
        this.areplay = areplay;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_article.apraise
     *
     * @return the value of tbl_article.apraise
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Integer getApraise() {
        return apraise;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_article.apraise
     *
     * @param apraise the value for tbl_article.apraise
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setApraise(Integer apraise) {
        this.apraise = apraise;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_article.csid
     *
     * @return the value of tbl_article.csid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Integer getCsid() {
        return csid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_article.csid
     *
     * @param csid the value for tbl_article.csid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setCsid(Integer csid) {
        this.csid = csid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_article.uid
     *
     * @return the value of tbl_article.uid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Integer getUid() {
        return uid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_article.uid
     *
     * @param uid the value for tbl_article.uid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_article.amoney
     *
     * @return the value of tbl_article.amoney
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Integer getAmoney() {
        return amoney;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_article.amoney
     *
     * @param amoney the value for tbl_article.amoney
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setAmoney(Integer amoney) {
        this.amoney = amoney;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_article.atxte
     *
     * @return the value of tbl_article.atxte
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public String getAtxte() {
        return atxte;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public String typename;
    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_article.atxte
     *
     * @param atxte the value for tbl_article.atxte
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setAtxte(String atxte) {
        this.atxte = atxte == null ? null : atxte.trim();
    }

    @Override
    public String toString() {
        return "Article{" +
                "aid=" + aid +
                ", aname='" + aname + '\'' +
                ", adate=" + adate +
                ", areplay=" + areplay +
                ", apraise=" + apraise +
                ", csid=" + csid +
                ", uid=" + uid +
                ", amoney=" + amoney +
                ", atxte='" + atxte + '\'' +
                '}';
    }
}