package com.example.main.service;

import com.example.main.entity.User;

public interface UserService {
    public User login(User user);
    public int signup(User user);

}
