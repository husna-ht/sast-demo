package com.example.dao;

import com.example.model.User;

public interface UserDao {

    void save(User user);

    User findByUsername(String username);

    boolean existsByUsername(String username);

    boolean existsByEmail(String email);
}
