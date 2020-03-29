package com.lyh.itstudy.service;

import com.lyh.itstudy.dao.GiftMapper;
import com.lyh.itstudy.model.Gift;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author shkstart
 * @date 2020/2/6 -15:31
 */
@Service
public class GiftService {
    @Autowired
    private GiftMapper giftMapper;

    /*查询热门商品*/
    public List<Gift> selectGiftHot(Integer i,Integer ii) {

        return giftMapper.selectGiftHot(i,ii);
    }

    /*查询最新商品*/
    public List<Gift> selectGiftNews(Integer news,Integer ii) {

        return giftMapper.selectGiftNews(news,ii);
    }

    /*根据礼品id查询相关礼品信息*/
    public Gift selectGiftByGid(Integer gid) {
       return giftMapper.selectGiftByGid(gid);

    }

    public void updateGift(Integer gid,Integer number) {
        giftMapper.updateGift(gid,number);

    }

    public List<Gift> adminFindAllGift() {

       return giftMapper.adminFindAllGift();

    }

    public void deleteGift(Integer gid) {
        giftMapper.deleteByPrimaryKey(gid);
    }

    public void addGift(Gift gift) {
        giftMapper.insert(gift);
    }

    public Gift toUpdateGift(Integer gid) {
        return  giftMapper.selectGiftByGid(gid);
    }

    public void adminupdateGift(Gift gift) {

        giftMapper.adminupdateGift(gift);
    }
}
