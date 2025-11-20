package com.rohan.courseApp.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
    @RequestMapping("adminlogin")
    public String adminLogin(){
        return "adminlogin";
    }

    @PostMapping("admin-auth")
    public String login(String username, String password) {
        if(username.equals("admin") && password.equals("admin"))
            return "addcourse";
        else
            return "wrongcredentials";
    }
}
