package com.lyh.itstudy.dao;

import java.util.List;
import com.lyh.itstudy.model.Article;
import com.lyh.itstudy.model.ArticleExample;
import org.apache.ibatis.annotations.Param;

public interface ArticleMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_article
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    long countByExample(ArticleExample example);


    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_article
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int deleteByExample(ArticleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_article
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int deleteByPrimaryKey(Integer aid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_article
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int insert(Article record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_article
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int insertSelective(Article record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_article
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    List<Article> selectByExampleWithBLOBs(ArticleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_article
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    List<Article> selectByExample(ArticleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_article
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    Article selectByPrimaryKey(Integer aid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_article
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByExampleSelective(@Param("record") Article record, @Param("example") ArticleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_article
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByExampleWithBLOBs(@Param("record") Article record, @Param("example") ArticleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_article
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByExample(@Param("record") Article record, @Param("example") ArticleExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_article
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByPrimaryKeySelective(Article record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_article
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByPrimaryKeyWithBLOBs(Article record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_article
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByPrimaryKey(Article record);

    List<Article> findHotArt(Integer csid);

    List<Article> findNewsArt(Integer csid);

    Article selectArtByAid(Integer aid);

    List<Article> findArtByCsid(Integer csid);
}