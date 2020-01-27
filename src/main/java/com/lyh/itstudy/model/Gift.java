package com.lyh.itstudy.model;

import java.util.Date;

public class Gift {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_gift.gid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Integer gid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_gift.gname
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private String gname;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_gift.market_price
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Double marketPrice;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_gift.show_price
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Double showPrice;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_gift.gimage
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private String gimage;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_gift.gdesc
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private String gdesc;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_gift.gdate
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Date gdate;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_gift.is_hot
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Integer isHot;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tbl_gift.gmoney
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    private Integer gmoney;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_gift.gid
     *
     * @return the value of tbl_gift.gid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Integer getGid() {
        return gid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_gift.gid
     *
     * @param gid the value for tbl_gift.gid
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setGid(Integer gid) {
        this.gid = gid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_gift.gname
     *
     * @return the value of tbl_gift.gname
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public String getGname() {
        return gname;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_gift.gname
     *
     * @param gname the value for tbl_gift.gname
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setGname(String gname) {
        this.gname = gname == null ? null : gname.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_gift.market_price
     *
     * @return the value of tbl_gift.market_price
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Double getMarketPrice() {
        return marketPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_gift.market_price
     *
     * @param marketPrice the value for tbl_gift.market_price
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setMarketPrice(Double marketPrice) {
        this.marketPrice = marketPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_gift.show_price
     *
     * @return the value of tbl_gift.show_price
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Double getShowPrice() {
        return showPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_gift.show_price
     *
     * @param showPrice the value for tbl_gift.show_price
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setShowPrice(Double showPrice) {
        this.showPrice = showPrice;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_gift.gimage
     *
     * @return the value of tbl_gift.gimage
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public String getGimage() {
        return gimage;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_gift.gimage
     *
     * @param gimage the value for tbl_gift.gimage
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setGimage(String gimage) {
        this.gimage = gimage == null ? null : gimage.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_gift.gdesc
     *
     * @return the value of tbl_gift.gdesc
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public String getGdesc() {
        return gdesc;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_gift.gdesc
     *
     * @param gdesc the value for tbl_gift.gdesc
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setGdesc(String gdesc) {
        this.gdesc = gdesc == null ? null : gdesc.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_gift.gdate
     *
     * @return the value of tbl_gift.gdate
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Date getGdate() {
        return gdate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_gift.gdate
     *
     * @param gdate the value for tbl_gift.gdate
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setGdate(Date gdate) {
        this.gdate = gdate;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_gift.is_hot
     *
     * @return the value of tbl_gift.is_hot
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Integer getIsHot() {
        return isHot;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_gift.is_hot
     *
     * @param isHot the value for tbl_gift.is_hot
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setIsHot(Integer isHot) {
        this.isHot = isHot;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tbl_gift.gmoney
     *
     * @return the value of tbl_gift.gmoney
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public Integer getGmoney() {
        return gmoney;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tbl_gift.gmoney
     *
     * @param gmoney the value for tbl_gift.gmoney
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    public void setGmoney(Integer gmoney) {
        this.gmoney = gmoney;
    }
}