package com.an.service;

import com.an.entil.UserInfo;

import java.util.List;
import java.util.Map;

public interface UserService {
    List<Map<String,Object>> findAll();

    void updateUser(UserInfo user);

    void addUser(UserInfo user);

    UserInfo selectByNameAndPwd(UserInfo userInfo);

    UserInfo selectById(int id);

    void delUserById(int id);

    UserInfo selectByNickname(String nickname);

    void forget(UserInfo userInfo);
}
