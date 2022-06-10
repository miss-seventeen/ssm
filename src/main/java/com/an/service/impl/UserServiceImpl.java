package com.an.service.impl;

import com.an.dao.UserDao;
import com.an.entil.UserInfo;
import com.an.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Comparator;
import java.util.*;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;

    @Override
    public List<Map<String, Object>> findAll() {
        return userDao.findAll();
    }

    @Override
    public void updateUser(UserInfo user) {
        userDao.updateUser(user);
    }

    @Override
    public void addUser(UserInfo user) {
        userDao.addUser(user);
    }

    @Override
    public UserInfo selectByNameAndPwd(UserInfo userInfo) {
        return userDao.selectByNameAndPwd(userInfo);
    }

    @Override
    public UserInfo selectById(int id) {
        return userDao.selectById(id);
    }

    @Override
    public void delUserById(int id) {
        userDao.delUserById(id);
    }

    @Override
    public UserInfo selectByNickname(String nickname) {
        return userDao.selectByNickname(nickname);
    }
    @Override
    public void forget(UserInfo userInfo){
        userDao.forget(userInfo);
    }
}
