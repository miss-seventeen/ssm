package com.an.entil;

import java.util.Date;

public class OrderInfo {
    private int id;
    private Date ordertime;
    private Double total;

    private UserInfo user;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getOrdertime() {
        return ordertime;
    }

    public void setOrdertime(Date ordertime) {
        this.ordertime = ordertime;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public UserInfo getUser() {
        return user;
    }

    public void setUser(UserInfo user) {
        this.user = user;
    }

    public OrderInfo(int id, Date ordertime, Double total, UserInfo user) {
        this.id = id;
        this.ordertime = ordertime;
        this.total = total;
        this.user = user;
    }

    public OrderInfo() {
    }
}
