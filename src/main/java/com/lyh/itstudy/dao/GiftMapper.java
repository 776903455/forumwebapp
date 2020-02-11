package com.lyh.itstudy.dao;

import java.util.List;

import com.lyh.itstudy.model.Gift;
import com.lyh.itstudy.model.GiftExample;
import org.apache.ibatis.annotations.Param;

public interface GiftMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_gift
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    long countByExample(GiftExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_gift
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int deleteByExample(GiftExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_gift
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int deleteByPrimaryKey(Integer gid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_gift
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int insert(Gift record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_gift
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int insertSelective(Gift record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_gift
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    List<Gift> selectByExample(GiftExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_gift
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    Gift selectByPrimaryKey(Integer gid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_gift
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByExampleSelective(@Param("record") Gift record, @Param("example") GiftExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_gift
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByExample(@Param("record") Gift record, @Param("example") GiftExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_gift
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByPrimaryKeySelective(Gift record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_gift
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByPrimaryKey(Gift record);

     List<Gift> selectGiftHot(@Param("i")Integer i,@Param("ii")Integer ii);

    List<Gift> selectGiftNews(@Param("news")Integer news,@Param("ii")Integer ii);

    Gift selectGiftByGid(Integer gid);

    void updateGift(@Param("gid") Integer gid, @Param("number") Integer number);
}