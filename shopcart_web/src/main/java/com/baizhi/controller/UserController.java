package com.baizhi.controller;

import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("login")
    public String login(User user, HttpServletRequest request) {
        User oneUser = userService.findOneUser(user);
        if (oneUser != null) {
            request.getSession().setAttribute("user", oneUser);
            return null;
        } else {
            return "用户信息错误";
        }
    }
}
