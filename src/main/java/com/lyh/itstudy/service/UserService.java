package com.lyh.itstudy.service;

import com.lyh.itstudy.dao.UserMapper;
import com.lyh.itstudy.model.User;
import com.lyh.itstudy.model.UserExample;
import com.lyh.itstudy.model.Userarticle;
import com.lyh.itstudy.utils.GetTimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lyh
 * @date 2020/1/26 -13:01
 */
@Service
public class UserService {
    @Autowired
    private UserMapper userMapper;


    /*注册功能*/
    public void register(User user) {
        userMapper.insert(user);
    }

    /*登录功能*/
    public User login(String username,String password){
        User user1 = userMapper.selectBynameAndpsw( username, password);

        return user1;

    }

    /*添加金币*/
    public int addScore(int score,String username,Integer qdstatus) {
        int i = userMapper.updateUser(score,username,qdstatus);
        return i;
    }

    /*校验用户存不存在*/
    public boolean cheakUser(String username) {
        boolean flag=true;

    User user = userMapper.selectByName(username);

        if(user!=null){
            flag=true;
        }else {
            flag=false;
        }
        return flag;
    }



    /*通过用户名查询某个用户*/
    public User findUser(String username) {
       return userMapper.selectByName(username);
    }

    /*更新用户信息*/
    public void updateUserbyUid(Integer uid, Integer score,Integer exchangenumber) {
        userMapper.updateUserbyUid(uid,score,exchangenumber);

    }

    /*更新后在根据id查询用户功能*/
    public User selectByUid(Integer uid){

        return userMapper.selectByUid(uid);
    }

    public void updateImg(Integer uid,String newname) {
        userMapper.updateImg(uid,newname);
    }

    public void updatePersonInfo(User user) {
        userMapper.updatePersonInfo(user);
    }

    public boolean updateUserScoreByUid(User user) {
        boolean flag=false;

        int i=userMapper.updateUserScoreByUid(user);
        if(i>0){
            flag=true;
        }
        return false;
    }

    public void updateqdStatus(String username, int qdstatus) {
        userMapper.updateqdStatus(username,qdstatus);
    }

    public List<User> adminFindAllUser() {

        return userMapper.adminFindAllUser();
    }

    public void deleteuser(Integer uid) {

        userMapper.deleteByPrimaryKey(uid);
    }

    /*查询微信是否是第一次登录
     *功能描述
     * @author lyh
     * @date 2020/3/22
     * @param [openid]
     * @return com.lyh.itstudy.model.User
    */
    public User findByWxOpenid(String openid) {
        return  userMapper.findByWxOpenid(openid);
    }

    /*添加用户*/
    public void addUser(User user) {
        String date = GetTimeUtil.getDate();
        String logintime = GetTimeUtil.getDate();
        user.setRegtime(date);
        user.setLogintime(logintime);
        userMapper.insertThridUser(user);
    }

    /*更新上次登录时间*/
    public void updateLoginTime(Integer uid) {
        String logintime = GetTimeUtil.getDate();
        userMapper.updateLoginTime(uid,logintime);

    }

    public User findUserByQQOpendid(String openid) {
        return userMapper.findUserByQQOpendid(openid);
    }

    /*
     *功能描述 更改用户签到状态
     * @author lyh
     * @date 2020/3/28
     * @param [uid, i]
     * @return void
    */
    public void updateQdStatus(Integer uid, Integer qdstatus) {
        userMapper.updateQdStatus(uid,qdstatus);
    }

    public Userarticle selectCollection(Integer uid) {
        return  userMapper.selectCollection(uid);

    }


}
