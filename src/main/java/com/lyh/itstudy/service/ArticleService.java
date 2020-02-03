package com.lyh.itstudy.service;

import com.lyh.itstudy.dao.ArticleMapper;
import com.lyh.itstudy.model.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author shkstart
 * @date 2020/2/3 -16:57
 */
@Service
public class ArticleService {
    @Autowired
    private ArticleMapper articleMapper;


    /*保存帖子信息*/
    public Integer saveArticle(Article article) {
        return articleMapper.insert(article);
    }
}
