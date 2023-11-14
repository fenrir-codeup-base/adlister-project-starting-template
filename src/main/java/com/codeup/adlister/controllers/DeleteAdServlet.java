package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLAdsDao;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DeleteAdServlet", urlPatterns = "/ads/deletead")
public class DeleteAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/ads/deletead.jsp").forward(request, response);
    }

        @Override
    protected void  doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

          long singleAd = Integer.parseInt(request.getParameter("id"));
          DaoFactory.getAdsDao().delete(singleAd);
          request.getSession().removeAttribute("ad");
          response.sendRedirect("/profile");
        }

}
