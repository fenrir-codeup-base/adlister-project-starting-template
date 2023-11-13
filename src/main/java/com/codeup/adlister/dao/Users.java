package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.ArrayList;
import java.util.List;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);

    default void update(User user) {
    }

    default void delete(User user) {
    }

    void edit(Object user);


}