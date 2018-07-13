package com.example.main.service.impl;

import com.example.main.dao.UserDao;
import com.example.main.entity.User;
import com.example.main.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;
    User dbUser=null;
    public User login(User user){
        try {
            dbUser =  getByUsername(user.getUsername());
            if (dbUser == null) {
                System.out.println(user.getUsername()+"用户不存在");
                return dbUser;
            }
            if (!dbUser.getPassword().equals(user.getPassword())) {
                System.out.println("密码错误");
                dbUser=null;
                return dbUser;
            }
        } catch (Exception e){
        e.printStackTrace();
    }
        return dbUser;
   }

    @Override
    public int signup(User user) {
        try{
           return userDao.insert(user);
        }catch (Exception e){
            e.printStackTrace();
        }
        return 0;
    }

    private User getByUsername(String username) {
        User user = new User();
        user.setUsername(username);
        return userDao.selectOne(user);
    }

}
