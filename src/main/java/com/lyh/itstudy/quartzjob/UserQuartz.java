package com.lyh.itstudy.quartzjob;

import com.lyh.itstudy.model.User;
import com.lyh.itstudy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author lyh
 * @date 2020/3/28 -17:02
 */

@Component
public class UserQuartz {

    @Autowired
    private UserService userService;

   /*
    *功能描述 每天24：00更新签到状态
    * @author lyh
    * @date 2020/3/28
    * @param []
    * @return void
   */
    public void execute(){
        List<User> users = userService.adminFindAllUser();
        for (User user : users) {
            if(user.getQdstatus()==1){
                userService.updateQdStatus(user.getUid(),0);
            }
        }

    }
}
