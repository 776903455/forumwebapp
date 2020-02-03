package com.lyh.itstudy.service;

import com.lyh.itstudy.dao.CategoryMapper;
import com.lyh.itstudy.dao.CategorysecondMapper;
import com.lyh.itstudy.model.Categorysecond;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

/**
 * @author lyh
 * @date 2020/2/3 -15:10
 */
@Service
public class CategorySecondService {

    @Autowired
    private CategorysecondMapper categorysecondMapper;

    public Categorysecond findByCsname(String csname) {

        Categorysecond categorysecond=categorysecondMapper.selectByCsname(csname);
        return categorysecond;
    }
}
