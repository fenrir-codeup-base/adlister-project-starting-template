package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLAdsDao;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name="EditServlet", urlPatterns = "/ads/edit")
public class EditAdServlet extends HttpServlet {

    @Override
    public void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        System.out.println("request.getParameter(\"id\") = " + request.getParameter("id"));
        //So I got my ID to here . . how can I use my id to go get the one AD object I want and then pass that forward to my JSP to use in the form?

        long idFromURL = Long.parseLong(request.getParameter("id"));
        System.out.println("idFromURL = " + idFromURL);

        Ads myDao = DaoFactory.getAdsDao();

        System.out.println("myDao.findById(5) = " + myDao.findById(5).getTitle());


        Ad testAd = DaoFactory.getAdsDao().findById(idFromURL);
        System.out.println("testAd.getId() = " + testAd.getId());
        System.out.println("testAd.getDescription() = " + testAd.getDescription());
        System.out.println("testAd.getTitle() = " + testAd.getTitle());

        request.setAttribute("ad", testAd);

        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
    }
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        Ad loggedInAd = (Ad) session.getAttribute("ad");

        // Retrieve the updated user details from the request parameters
        long adId = loggedInAd.getId();
        String title = request.getParameter("title");
        String description = request.getParameter("description");

        //Verifies if input has errors and confirms double checks password
        boolean HasErrors = adId.isEmpty()
                || title.isEmpty()
                || description.isEmpty();
        if (HasErrors) {
            request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
            return;

        }

        //Create a User object with the updated values
        User updatedAd = new User(adId, title, description);

        //Call the update method to update the user in the database
        DaoFactory.getUsersDao().update(updatedAd);
        request.getSession().removeAttribute("user");
        request.getSession().setAttribute("user", updatedAd);
        response.sendRedirect("/profile");


    }
}
