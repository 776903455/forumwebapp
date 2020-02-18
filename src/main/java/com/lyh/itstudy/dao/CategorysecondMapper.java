package com.lyh.itstudy.dao;

import java.util.List;

import com.lyh.itstudy.model.Article;
import com.lyh.itstudy.model.Categorysecond;
import com.lyh.itstudy.model.CategorysecondExample;
import org.apache.ibatis.annotations.Param;

public interface CategorysecondMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_categorysecond
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    long countByExample(CategorysecondExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_categorysecond
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int deleteByExample(CategorysecondExample example);


    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_categorysecond
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int deleteByPrimaryKey(Integer csid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_categorysecond
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int insert(Categorysecond record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_categorysecond
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int insertSelective(Categorysecond record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_categorysecond
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */

    Categorysecond selectByCsname(String csname);

    List<Categorysecond> selectByExample(CategorysecondExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_categorysecond
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    Categorysecond selectByPrimaryKey(Integer csid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_categorysecond
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByExampleSelective(@Param("record") Categorysecond record, @Param("example") CategorysecondExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_categorysecond
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByExample(@Param("record") Categorysecond record, @Param("example") CategorysecondExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_categorysecond
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByPrimaryKeySelective(Categorysecond record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_categorysecond
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByPrimaryKey(Categorysecond record);

    Categorysecond findArticleByCsid(Integer csid);

    List<Categorysecond> findCategory(Integer cid);
}