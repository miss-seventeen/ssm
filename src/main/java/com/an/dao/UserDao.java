package com.an.dao;

import com.an.entil.UserInfo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;
public interface UserDao {

    UserInfo selectByNameAndPwd(UserInfo userInfo);

    List<Map<String, Object>> findAll();

    UserInfo selectById(int id);

    void updateUser(UserInfo user);

    void delUserById(int id);

    UserInfo selectByNickname(String nickname);
    void addUser(UserInfo userInfo);

    void forget(UserInfo userInfo);
}
