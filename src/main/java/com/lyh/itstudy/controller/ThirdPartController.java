package com.lyh.itstudy.controller;

import com.alibaba.fastjson.JSONObject;
import com.lyh.itstudy.constants.UserConstants;
import com.lyh.itstudy.model.User;
import com.lyh.itstudy.service.UserService;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.Properties;
import java.util.UUID;

/**
 * @author lyh
 * @date 2020/3/22 -9:59
 */

@Controller
public class ThirdPartController {
        @Autowired
        private UserService userService;

    @RequestMapping("wecharLogin")
    public  void wecharLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {

        /*加载配置文件*/
        Properties prop=new Properties();
        prop.load(ThirdPartController.class.getClassLoader().getResourceAsStream("config.properties"));

        /*获取配置文件的参数*/
        //微信应用AppID
        String appId = prop.getProperty("wx.AppID");
        //微信登录回调域
        String redirect_uri = prop.getProperty("wx.redirect_uri");
        //微信应用AppSecret
        String appSecret = prop.getProperty("wx.AppSecret");

        /*拼接微信指定授权地址*/
        String url=" https://open.weixin.qq.com/connect/qrconnect?appid="+appId+"&redirect_uri="+redirect_uri+"&response_type=code&scope=snsapi_login";
        /*定向到微信登录指定的地址进行微信登录授权,授权成功后返回code*/
        response.sendRedirect(url);

    }

    /*
     *功能描述 处理微信登录回调域
     * @author lyh
     * @date 2020/3/20
     * @param [request, response]
     * @return void
     */
    @RequestMapping("wx_login")
    public String wx_login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String code = request.getParameter("code");
        System.out.println("code:"+code);
        /*加载配置文件*/
        Properties prop=new Properties();
        prop.load(ThirdPartController.class.getClassLoader().getResourceAsStream("config.properties"));

        /*获取配置文件的参数*/
        //微信应用AppID
        String appId = prop.getProperty("wx.AppID");
        //微信登录回调域
        String redirect_uri = prop.getProperty("wx.redirect_uri");
        //微信应用AppSecret
        String appSecret = prop.getProperty("wx.AppSecret");

        /*通过code获取access_token*/
        String url="https://api.weixin.qq.com/sns/oauth2/access_token?appid="+appId+"&secret="+appSecret+"&code="+code+"&grant_type=authorization_code";

        // 获取AccessToken、openid等数据
        JSONObject authInfo = auth(url);

        url = "https://api.weixin.qq.com/sns/userinfo?access_token=" + authInfo.getString("access_token") +
                "&openid=" + authInfo.getString("openid");


        JSONObject userInfo = getUserInfo(url);
        System.out.println("userInfo: " + userInfo);

        System.out.println("openid:"+userInfo.getString("openid"));
        // 根据微信的openid查询此用户原来有没有使用过微信登录
        User user = userService.findByWxOpenid(userInfo.getString("openid"));


        // 说明该用户是第一次使用微信登录
        if (user == null) {

            user = new User();

            // 用户的头像
            user.setUimage(userInfo.getString("headimgurl"));

            // 性别
            user.setSex(userInfo.getString("sex"));
            // 用户的昵称
            user.setUname(userInfo.getString("nickname"));
            /*设置地址*/
            String city=userInfo.getString("city");
            String province=userInfo.getString("province");
            user.setAddr(province.concat(city));

            // 随机用户名和密码(11位随机字符串)
            user.setUsername(UUID.randomUUID().toString().substring(36 - 15));
            user.setPassword(UUID.randomUUID().toString().substring(36 - 15));

            user.setWx_opendid(userInfo.getString("openid"));

            /*设置为第三方用户*/
            user.setIs_thirdpart(1);

            // 注册一个新的用户
            userService.addUser(user);

        }
        HttpSession session=request.getSession();
        // 修改登录时间
        userService.updateLoginTime(user.getUid());

        session.setAttribute(UserConstants.LOGIN_USER_SESSION, user);


            return "redirect:toIndex.do";

    }

    private JSONObject auth(String url) {

        try {
            // 创建一个http Client请求
            CloseableHttpClient client = HttpClients.createDefault();

            HttpGet httpGet = new HttpGet(url);

            HttpResponse response= client.execute(httpGet);



            HttpEntity entity = response.getEntity();       // 获取响应数据(json)

            if (entity != null) {
                String result = EntityUtils.toString(entity, Charset.forName("UTF8"));

                return JSONObject.parseObject(result);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }


        return null;
    }

    private JSONObject getUserInfo(String url) {

        try {
            CloseableHttpClient client = HttpClients.createDefault();

            HttpGet httpGet = new HttpGet(url);

            HttpResponse response = client.execute(httpGet);
            HttpEntity entity = response.getEntity();

            if (entity != null) {
                String result = EntityUtils.toString(entity, Charset.forName("UTF8"));

                return JSONObject.parseObject(result);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }


        return null;
    }




    /*
     *功能描述 实现qq登录
     * @author lyh
     * @date 2020/3/22
     * @param
     * @return
    */
    @RequestMapping("qq_ToLogin")
    public void qq_ToLogin (HttpServletRequest request, HttpServletResponse response) throws IOException {

        /*加载配置文件*/
        Properties prop=new Properties();
        prop.load(this.getClass().getClassLoader().getResourceAsStream("config.properties"));

        /*qq应用的AppID*/
        String appid = prop.getProperty("qq.AppID");
        /*qq登录回调域*/
        String redirecturi = prop.getProperty("qq.redirect_uri");

        /*拼接路径*/
        String url = "https://graph.qq.com/oauth2.0/authorize?response_type=code" +
                "&client_id=" + appid +
                "&redirect_uri=" + URLEncoder.encode(redirecturi) +
                "&state=1";

        // 重定向到QQ登录指定的地址进行QQ授权,授权成功后返回code
        response.sendRedirect(url);
    }



    /*
     *功能描述 处理qq回调函数
     * @author lyh
     * @date 2020/3/21
     * @param [request, response]
     * @return void
     */
    @RequestMapping("qq_login")
    public String qq_login(HttpServletRequest request, HttpServletResponse response) throws IOException {

        Properties prop=new Properties();
        prop.load(this.getClass().getClassLoader().getResourceAsStream("config.properties"));
        /*qq应用的AppID*/
        String appid = prop.getProperty("qq.AppID");
        /*qq登录回调域*/
        String redirecturi = prop.getProperty("qq.redirect_uri");
        /*QQ应用的AppKey*/
        String appKey = prop.getProperty("qq.AppKey");

        /*授权成功后获取code*/
        String code = request.getParameter("code");

        /*根据code去获得临时票据access-token*/
        String url = "https://graph.qq.com/oauth2.0/token?grant_type=authorization_code" + "&client_id=" + appid +
                "&client_secret=" + appKey +
                "&code=" + code +
                "&redirect_uri=" + redirecturi;

        String access_token = getAccessTokenForQQ(url);

        // 通过access_token获取openid(qq唯一标识符)
        url = "https://graph.qq.com/oauth2.0/me?access_token=" + access_token;
        String openid = getQQOpenID(url);

        url = "https://graph.qq.com/user/get_user_info?access_token=" + access_token +
                "&oauth_consumer_key=" + appid +
                "&openid=" + openid;
        // 通过access_token和openid获取qq的用户信息（昵称，性别，头像...）
        JSONObject userInfo = getUserInfoForQQ(url);

        /*根据opendid查看用户是否第一次登录*/
        User user=userService.findUserByQQOpendid(openid);

        System.out.println("qqinfo:"+userInfo);
        if(user==null){
            /*如果是第一次登录则添加此用户*/
            user = new User();

            // 用户的头像
            user.setUimage(userInfo.getString("figureurl_1"));

            // 性别
            user.setSex(userInfo.getString("sex"));
            // 用户的昵称
            user.setUname(userInfo.getString("nickname"));
            /*设置地址*/
            String city=userInfo.getString("city");
            String province=userInfo.getString("province");
            user.setAddr(province.concat(city));

            // 随机用户名(11位随机字符串)
            user.setUsername(UUID.randomUUID().toString().substring(36 - 15));
            user.setPassword(UUID.randomUUID().toString().substring(36 - 15));

            user.setQQ_opendid(userInfo.getString("openid"));

            /*设置为第三方用户*/
            user.setIs_thirdpart(1);

            // 注册一个新的用户
            userService.addUser(user);
        }

        HttpSession session=request.getSession();
        // 修改登录时间
        userService.updateLoginTime(user.getUid());

        session.setAttribute(UserConstants.LOGIN_USER_SESSION, user);

        return "redirect:toIndex.do";


    }



    /*
     *功能描述 获取临时票据access-token
     * @author lyh
     * @date 2020/3/21
     * @param [url]
     * @return com.alibaba.fastjson.JSONObject
     */
    public String getAccessTokenForQQ(String url){

        String token = null;
        try {
            // 创建一次HttpClient请求
            CloseableHttpClient client = HttpClients.createDefault();

            HttpGet httpGet = new HttpGet(url);
            HttpResponse response = client.execute(httpGet);
            HttpEntity entity = response.getEntity();

            if (entity != null) {
                String result = EntityUtils.toString(entity, "UTF-8");
                if (result.indexOf("access_token") >= 0) {
                    String[] array = result.split("&");
                    for (String str : array) {
                        if (str.indexOf("access_token") >= 0) {
                            token = str.substring(str.indexOf("=") + 1);
                            break;
                        }
                    }
                }
            }
            httpGet.releaseConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return token;
    }

    /*
     *功能描述 获取openid
     * @author lyh
     * @date 2020/3/22
     * @param [url]
     * @return java.lang.String
    */
    public String getQQOpenID(String url) throws IOException {
        JSONObject jsonObject = null;
        CloseableHttpClient client = HttpClients.createDefault();

        HttpGet httpGet = new HttpGet(url);
        HttpResponse response = client.execute(httpGet);
        HttpEntity entity = response.getEntity();

        if (entity != null) {
            String result = EntityUtils.toString(entity, "UTF-8");
            int startIndex = result.indexOf("(");
            int endIndex = result.lastIndexOf(")");
            String json = result.substring(startIndex + 1, endIndex);
            jsonObject = JSONObject.parseObject(json);
        }
        httpGet.releaseConnection();
        if (jsonObject != null) {
            return jsonObject.getString("openid");
        } else {
            return null;
        }
    }


    /*
     *功能描述 获取用户信息
     * @author lyh
     * @date 2020/3/21
     * @param [url]
     * @return com.alibaba.fastjson.JSONObject
     */
    private JSONObject getUserInfoForQQ(String url) throws IOException {

        JSONObject jsonObject = null;
        CloseableHttpClient client = HttpClients.createDefault();

        HttpGet httpGet = new HttpGet(url);
        HttpResponse response = client.execute(httpGet);
        HttpEntity entity = response.getEntity();

        if (entity != null) {
            String result = EntityUtils.toString(entity, "UTF-8");
            jsonObject = JSONObject.parseObject(result);
        }
        httpGet.releaseConnection();
        return jsonObject;
    }

}
