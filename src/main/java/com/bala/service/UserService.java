package com.bala.service;

import com.bala.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
