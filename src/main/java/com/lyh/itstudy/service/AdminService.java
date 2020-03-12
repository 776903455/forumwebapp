package com.lyh.itstudy.service;

import com.lyh.itstudy.dao.AdminMapper;
import com.lyh.itstudy.model.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author lyh
 * @date 2020/3/12 -18:09
 */
@Service
public class AdminService {

    @Autowired
    private AdminMapper adminMapper;


    public Admin findAdminByname(String name){
        return  adminMapper.findAdminByname(name);
    }
}
