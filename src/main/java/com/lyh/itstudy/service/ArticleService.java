package com.lyh.itstudy.service;

import com.lyh.itstudy.dao.ArticleMapper;
import com.lyh.itstudy.model.Article;
import com.lyh.itstudy.model.Categorysecond;
import com.lyh.itstudy.model.Userarticle;
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


    /*根据csid查询帖子*/
    public List<Article> findArtByCsid(Integer csid) {
        return articleMapper.findArtByCsid(csid);
    }

//    增加查看数
    public void addLookNum(Integer aid,Integer looknum) {
        articleMapper.updateLookNum(aid,looknum);
    }


    public  List<Article> findLookest() {
        return articleMapper.findLookest();
    }

    public  List<Article> findLookest1() {
        return articleMapper.findLookest1();
    }

    public  List<Article> findLookest2() {
        return articleMapper.findLookest2();
    }

    public  List<Article> findLookest3() {
        return articleMapper.findLookest3();
    }

    public  List<Article> findLookest4() {
        return articleMapper.findLookest4();
    }

    public  List<Article> findLookest5() {
        return articleMapper.findLookest5();
    }


    public  List<Article> findLookest6() {
        return articleMapper.findLookest6();
    }
    public  List<Article> findLookest7() {
        return articleMapper.findLookest7();
    }

    public List<Article> findHotArtByCsid(Integer c1, Integer c2,Integer c3) {
        return  articleMapper.findHotArtByCsid(c1,c2,c3);
    }

    public List<Article> findAllHotArt(Integer c1, Integer c2,Integer c3) {
        return articleMapper.findAllHotArt(c1,c2,c3);
    }

    public List<Article> findAllNewsArt(Integer c1, Integer c2,Integer c3) {
        return articleMapper.findAllNewsArt(c1,c2,c3);
    }

    public Article selectCsByAid(Integer aid) {
        return articleMapper.selectCsByAid(aid);
    }

    public List<Article> findPersonArt(Integer uid) {
       return articleMapper.findPersonArt(uid);

    }

    public List<Article> adminFindAllArticle() {

        return articleMapper.adminFindAllArticle();
    }


    public Article findArtByAidForColl(Integer aid){
        return articleMapper.findArtByAidForColl(aid);
    }

    public void deletearticle(Integer aid) {
        articleMapper.deleteByPrimaryKey(aid);
    }

    public Article toupdateArticle(Integer aid) {
        return articleMapper.toupdateArticle(aid);
    }

    public void updateArticle(Article article) {
        articleMapper.updateArticle(article);
    }

    public Userarticle findArtByUid(Integer uid) {
        return articleMapper.findArtByUid(uid);
    }

    public void addCollections(Userarticle userarticle) {
        articleMapper.addCollections(userarticle);
    }

    public void updateCollections(Userarticle userarticle) {
        articleMapper.updateCollections(userarticle);
    }

    public void deleteCollections(Userarticle userarticle) {

        articleMapper.deleteCollections(userarticle);
    }


    public List<Article> findArtByAid(String artid) {
        return  articleMapper.findArtByAid(artid);
    }

    public List<Article> selectArtByTime(String timevalue,String csid) {
        List<Article> articles= articleMapper.selectArtByTime(Integer.parseInt(timevalue),Integer.parseInt(csid));
        if(articles!=null){
            return articles;
        }
        return null;
    }

    public void updateArtColls(Article article) {
        articleMapper.updateArtColls(article);
    }


    public List<Article> myAllArt(Integer uid) {
        return articleMapper.myAllArt(uid);
    }
}
