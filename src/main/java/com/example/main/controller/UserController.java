package com.example.main.controller;

import com.example.main.entity.User;
import com.example.main.service.impl.UserServiceImpl;
import com.example.main.util.utils;
import jdk.nashorn.internal.ir.RuntimeNode;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.security.auth.message.callback.SecretKeyCallback;
import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserServiceImpl userServiceImpl;

    @PostMapping("/loginVerify")
    public String loginVerify(Model model, HttpServletRequest request, User user) {
        try {
            User logUser=null;
            logUser = userServiceImpl.login(user);
            if(logUser!=null){
               System.out.println(user.getUsername());
               request.getSession().setAttribute("user", logUser);
            }
            else if(logUser==null){
                String logmsg="登录失败，请确认信息无误后重新登录！";
                request.getSession().setAttribute("logmsg", logmsg);
                model.addAttribute("msg", logmsg);
                return "/login";
            }
        } catch (Exception e) {
            model.addAttribute("msg", e.getMessage());
            return "/login";
        }
        return "/index";
    }

    @PostMapping("/signup")
    public String signup(Model model, HttpServletRequest request, User user) {
        try {
            user.setCreatetime(utils.getTimes());
            int signup = userServiceImpl.signup(user);
            System.out.println("注册"+user.getUsername());
           // request.getSession().setAttribute("user", user);
        } catch (Exception e) {
            model.addAttribute("msg", e.getMessage());
            return "/signup";
        }
        return "/login";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) {
        request.getSession().invalidate();
        return "redirect:/";
    }

}
