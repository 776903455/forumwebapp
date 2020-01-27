package com.lyh.itstudy.service;

import com.lyh.itstudy.dao.UserMapper;
import com.lyh.itstudy.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
