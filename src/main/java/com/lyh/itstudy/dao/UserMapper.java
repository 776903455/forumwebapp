package com.lyh.itstudy.dao;

import java.util.List;
import com.lyh.itstudy.model.User;
import com.lyh.itstudy.model.UserExample;
import com.lyh.itstudy.model.Userarticle;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_user
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    long countByExample(UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_user
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int deleteByExample(UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_user
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int deleteByPrimaryKey(Integer uid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_user
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int insert(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_user
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int insertSelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_user
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    List<User> selectByExample(UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_user
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    User selectByPrimaryKey(Integer uid);
    User selectByName(String username);

    User selectBynameAndpsw(@Param("key_username") String username ,@Param("key_password") String password);


    int updateUser(@Param("score") int score,@Param("username") String username,@Param("qdstatus")int qdstatus);

    int updateByExampleSelective(@Param("record") User record, @Param("example") UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_user
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByExample(@Param("record") User record, @Param("example") UserExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_user
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByPrimaryKeySelective(User record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_user
     *
     * @mbg.generated Sun Jan 26 12:38:17 GMT+08:00 2020
     */
    int updateByPrimaryKey(User record);

    void updateUserbyUid(@Param("uid") Integer uid, @Param("score") Integer score,@Param("exchangenumber")Integer exchangenumber);

    User selectByUid(Integer uid);

    void updateImg(@Param("uid") Integer uid,@Param("uimage") String uimage);

    void updatePersonInfo(User users);

    int updateUserScoreByUid(User user);

    void updateqdStatus(@Param("username") String username, @Param("qdstatus") int qdstatus);

    List<User> adminFindAllUser();

    User findByWxOpenid(String openid);

    void insertThridUser(User user);

    void updateLoginTime(@Param("uid")Integer uid,@Param("logintime") String logintime);

    User findUserByQQOpendid(String openid);

    void updateQdStatus(@Param("uid")Integer uid, @Param("qdstatus")Integer qdstatus);

    Userarticle selectCollection(Integer uid);

}