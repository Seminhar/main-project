package com.example.main.controller;

import com.example.main.entity.User;
import com.example.main.service.impl.UserServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/passport")
public class PassportController {


    @RequestMapping(value = "/login")
    public String login() {
        return "/login";
    }
    @RequestMapping(value = "/index")
    public String index() {
        return "/index";
    }
    @RequestMapping(value = "/introduction")
    public String introduction(){
        return "/introduction";
    }
    @RequestMapping(value = "/signup")
    public String signup(){
            return "/signup";
    }

    @RequestMapping(value = "/probation")
    public String probation(){
        return "/probation";
    }

}
