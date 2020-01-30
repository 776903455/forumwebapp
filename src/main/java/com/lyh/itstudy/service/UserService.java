package com.lyh.itstudy.service;

import com.lyh.itstudy.dao.UserMapper;
import com.lyh.itstudy.model.User;
import com.lyh.itstudy.model.UserExample;
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
    public int addScore(int score,String username) {
        int i = userMapper.updateUser(score,username);
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

}
