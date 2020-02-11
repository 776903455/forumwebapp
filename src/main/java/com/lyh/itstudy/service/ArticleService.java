package com.lyh.itstudy.service;

import com.lyh.itstudy.dao.ArticleMapper;
import com.lyh.itstudy.model.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    /*查询热门帖*/
    public List<Article> findHotArt(Integer csid) {
        return  articleMapper.findHotArt(csid);
    }

    /*查询最新帖*/
    public List<Article> findNewsArt(Integer csid) {

        return  articleMapper.findNewsArt(csid);
    }

    public Article selectArtByAid(Integer aid) {
        return  articleMapper.selectArtByAid(aid);
    }
}
