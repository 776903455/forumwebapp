package com.lyh.itstudy.service;

import com.lyh.itstudy.dao.CategoryMapper;
import com.lyh.itstudy.model.Category;
import com.lyh.itstudy.model.Categorysecond;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author shkstart
 * @date 2020/2/4 -15:55
 */
@Service
public class CategoryService {
    @Autowired
    private CategoryMapper categoryMapper;

    public List<Category> findCategory(Integer cid){
        List<Category> list=categoryMapper.findCategory(cid);
        return list;
    }
}
