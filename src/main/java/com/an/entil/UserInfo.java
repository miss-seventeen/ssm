package com.an.entil;

public class UserInfo {
    private int id;
    private String username;
    private String nickname;
    private String password;
    private int age;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public UserInfo(int id, String username, String nickname, String password, int age) {
        this.id = id;
        this.username = username;
        this.nickname = nickname;
        this.password = password;
        this.age = age;
    }

    public UserInfo() {
    }
}
