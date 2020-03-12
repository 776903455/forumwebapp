package com.lyh.itstudy.dao;

import com.lyh.itstudy.model.Admin;
import com.lyh.itstudy.model.User;

/**
 * @author lyh
 * @date 2020/3/12 -18:04
 */
public interface AdminMapper {

    Admin findAdminByname(String name);
}




