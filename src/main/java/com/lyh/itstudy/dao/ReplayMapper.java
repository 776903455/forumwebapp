package com.lyh.itstudy.dao;

import java.util.List;

import com.lyh.itstudy.model.Replay;
import com.lyh.itstudy.model.ReplayExample;
import org.apache.ibatis.annotations.Param;

public interface ReplayMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_replay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    long countByExample(ReplayExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_replay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int deleteByExample(ReplayExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_replay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int deleteByPrimaryKey(Integer repid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_replay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int insert(Replay record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_replay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int insertSelective(Replay record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_replay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    List<Replay> selectByExampleWithBLOBs(ReplayExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_replay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    List<Replay> selectByExample(ReplayExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_replay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    Replay selectByPrimaryKey(Integer repid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_replay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByExampleSelective(@Param("record") Replay record, @Param("example") ReplayExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_replay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByExampleWithBLOBs(@Param("record") Replay record, @Param("example") ReplayExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_replay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByExample(@Param("record") Replay record, @Param("example") ReplayExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_replay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByPrimaryKeySelective(Replay record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_replay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByPrimaryKeyWithBLOBs(Replay record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_replay
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByPrimaryKey(Replay record);
}