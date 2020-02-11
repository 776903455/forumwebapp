package com.lyh.itstudy.service;

import com.lyh.itstudy.dao.ReplayMapper;
import com.lyh.itstudy.model.Replay;
import com.sun.org.apache.xpath.internal.SourceTree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lyh
 * @date 2020/2/9 -10:16
 */
@Service
public class ReplayService {
    @Autowired
    private ReplayMapper replayMapper;


    public void savaReplay(Replay replay) {
        replayMapper.insert(replay);
    }

    /*根据aid获取帖子的回复数据*/
    public List<Replay> selectRepByAid(Integer aid) {
        return replayMapper.selectRepByAid(aid);
    }
}
