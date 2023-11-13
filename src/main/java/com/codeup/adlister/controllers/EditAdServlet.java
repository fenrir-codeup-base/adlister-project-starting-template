package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="EditServlet", urlPatterns = "/ads/edit")
public class EditAdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adId = request.getParameter("id");
        Ad ad = DaoFactory.getAdsDao().findById(Long.parseLong(adId));
        request.setAttribute("ad", ad);
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ad = request.getParameter("id");
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        Ad ads = DaoFactory.getAdsDao().findById(Long.parseLong(ad));
        ads.setTitle(title);
        ads.setDescription(description);
        DaoFactory.getAdsDao().update(ads);

        response.sendRedirect("/profile");
    }
}
