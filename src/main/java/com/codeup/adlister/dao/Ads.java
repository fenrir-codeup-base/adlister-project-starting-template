package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import java.util.ArrayList;
import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    //update ads
    void update(Ad ad);
    // delete ads
    void delete(long id);

    Ad findById(long id);

    List<Ad> findByUserId(long userId);

    List<Ad> search(String query);

    List<Ad> getUserAds(User user);

}