package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AdDetailServlet", urlPatterns = "/ads/detail")
public class AdDetailServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        The parseLong() method in Java is used to parse a string argument as a signed long value.
        long adId = Long.parseLong(request.getParameter("id"));

        Ad ad = DaoFactory.getAdsDao().findById(adId);
        if(ad != null) {
            request.setAttribute("ad", ad);
        }
        //creates new session
        //stores user data
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user != null) {
            request.setAttribute("user", user);
        }
        request.getRequestDispatcher("/WEB-INF/ads/adDetail.jsp").forward(request, response);

    }
}


