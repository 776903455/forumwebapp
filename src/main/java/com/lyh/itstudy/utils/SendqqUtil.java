package com.lyh.itstudy.utils;

import com.alibaba.fastjson.JSONObject;

import com.sun.mail.util.MailSSLSocketFactory;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.io.*;
import java.security.GeneralSecurityException;
import java.util.*;

/**
 * @author lyh
 * @date 2020/2/24 -15:26
 */

public class SendqqUtil {

    public static final String SENDEMAILE="2369210822@qq.com";
    public static final String ACCEPTEMAILE="776903455@qq.com";
    public void sendqq(String qq, HashMap<String, String> map) {
        saveBuyerInfo(map);
        try {

            /*设置发件人*/
           final String from = SENDEMAILE;
            /*设置收件人*/
            String to = ACCEPTEMAILE;
            /*设置邮箱发送的服务器，这里为qq邮件服务器*/
            String host = "smtp.qq.com";
            //获取系统属性
            Properties properties = System.getProperties();
            //SSL加密
            MailSSLSocketFactory sf = new MailSSLSocketFactory();
            sf.setTrustAllHosts(true);
            properties.put("mail.smtp.ssl.enable", "true");
            properties.put("mail.smtp.ssl.socketFactory", sf);

            //设置系统属性
            properties.setProperty("mail.smtp.host", host);
            properties.put("mail.smtp.auth", "true");

            Session session = Session.getDefaultInstance(properties, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(from, "umnemhzjpjbndjgd");
                }
            });

            Message message = new MimeMessage(session);

            //防止邮件被当然垃圾邮件处理，披上Outlook的马甲
            message.addHeader("X-Mailer", "Microsoft Outlook Express 6.00.2900.2869");
            //设置发件人
            message.setFrom(new InternetAddress(from));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            //邮件主题
            message.setSubject("用户购买信息");
            BodyPart bodyPart = new MimeBodyPart();
            //消息体（正文）
            bodyPart.setText("快去查看附件");
            Multipart multipart = new MimeMultipart();
            multipart.addBodyPart(bodyPart);
            //附件
            bodyPart = new MimeBodyPart();
            String fileName = "f:\\demo\\user.txt";
            DataSource dataSource = new FileDataSource(fileName);
            bodyPart.setDataHandler(new DataHandler(dataSource));
            //文件显示的名称
            bodyPart.setFileName("user.txt");
            multipart.addBodyPart(bodyPart);
            message.setContent(multipart);
            //发送邮件
            Transport.send(message);
            System.out.println("发送成功！");

        } catch (GeneralSecurityException e) {
            e.printStackTrace();
        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }


    public static void saveBuyerInfo(HashMap<String, String> map) {
        try {
            JSONObject json = new JSONObject();
            String str = json.toJSONString(map);
            System.out.println("str=" + str);
            File file = new File("f:\\demo\\user.txt");
            FileWriter fw = new FileWriter(file);
            fw.write(str);
            fw.close();

        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
