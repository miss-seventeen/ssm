package com.an.controller;



import com.an.entil.UserInfo;
import com.an.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
public class UserController {

    @Autowired
    public UserService userService;

    //登录
    @RequestMapping(value = "/login")
    public String login(Model model,UserInfo userInfo){
        System.out.println("AAAAA");
        UserInfo user = userService.selectByNameAndPwd(userInfo);
        if(user!=null){
            List<Map<String,Object>> list = userService.findAll();
            model.addAttribute("list",list);
            return "success";
        }else{
            System.out.println("用户名或密码错误");
            return "index";

        }
    }

    //查询所有
    @RequestMapping(value = "/findAll")
    public String findAll(Model model){
        List<Map<String,Object>> list = userService.findAll();
        model.addAttribute("list",list);
        return "success";
    }

    //添加
    @RequestMapping(value = "/addUser")
    public String addUser(UserInfo user){
       UserInfo userInfo= userService.selectByNickname(user.getNickname());
        if(ObjectUtils.isEmpty(userInfo)){
            userService.addUser(user);
            System.out.println("注册成功");
        }else {
            System.out.println("昵称已被注册");
        }

        return "redirect:/findAll";//转发
    }

    //根据ID查询并修改
    @RequestMapping(value = "/findUserById")
    public String findUserById(UserInfo userInfo,Model model,int id){
        System.out.println(userInfo.getId()+"   两种方式  "+id);
        UserInfo userInfo1=userService.selectById(userInfo.getId());
        model.addAttribute("user",userInfo1);
        return "updateUser";
    }
    @RequestMapping(value = "/updateUser")
    public String updateUser(UserInfo userInfo){
        userService.updateUser(userInfo);
        return "redirect:/findAll";
    }

   /* @RequestMapping(value = "/findUserById/{id}")
    public String findUserById(@PathVariable("id") int id, Model model){
        UserInfo user=new UserInfo();
        user.setId(id);
        List<Map<String,Object>> list = userService.findAll();
        if(list!=null&&list.size()>0){
           model.addAttribute("user",list.get(0));
        }

        return "addAndUpdate";
    }*/


      //删除
    @RequestMapping("/delUser")
    public String delUser(int id){
        userService.delUserById(id);
        return "forward:/findAll";
    }

    //忘记密码
    @RequestMapping("/forget")
    public String forget(UserInfo userInfo){
        try {
            userService.forget(userInfo);
            System.out.println("密码已重置");
            return "index";
        } catch (Exception e) {
            System.out.println("密码重置失败");
            e.printStackTrace();
            return "forget";
        }

    }


}
