package com.lyh.itstudy.service;

import com.lyh.itstudy.dao.CategoryMapper;
import com.lyh.itstudy.dao.CategorysecondMapper;
import com.lyh.itstudy.model.Article;
import com.lyh.itstudy.model.Categorysecond;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lyh
 * @date 2020/2/3 -15:10
 */
@Service
public class CategorySecondService {

    @Autowired
    private CategorysecondMapper categorysecondMapper;
    /*根据csname查找二级目录信息*/
    public Categorysecond findByCsname(String csname) {

        Categorysecond categorysecond=categorysecondMapper.selectByCsname(csname);
        return categorysecond;
    }

   /* 根据csid查找帖子信息*/
    public Categorysecond findArticleByCsid(Integer csid) {
       Categorysecond cs= categorysecondMapper.findArticleByCsid(csid);
        return cs;
    }

    public List<Categorysecond> selectAll() {
        return categorysecondMapper.selectByExample(null);
    }

    /*根据cid查找对应的二级目录*/
    public List<Categorysecond> findCategory(Integer cid) {
        return categorysecondMapper.findCategory(cid);
    }

    public Categorysecond findCsByCsid(Integer csid) {

        return  categorysecondMapper.findCsByCsid(csid);
    }
}
