package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Config;
import com.codeup.adlister.util.Password;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "EditProfileServlet", urlPatterns = "/editprofile")
public class EditProfileServlet extends HttpServlet {
    @Override
    public void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.getRequestDispatcher("/WEB-INF/users/EditProfile.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User loggedInUser = (User) request.getSession().getAttribute("user");

        // Retrieve the updated user details from the request parameters
        long userId = loggedInUser.getId();

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

        //Verifies if input has errors and confirms double checks password
        boolean HasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (! password.equals(passwordConfirmation));
        if (HasErrors) {
            request.getRequestDispatcher("/WEB-INF/user/EditProfile.jsp").forward(request, response);
            return;

        }

        //Update user
        DaoFactory.getUsersDao().update(new User(loggedInUser.getId(), username, email, Password.hash(password)));
        response.sendRedirect("/profile");

        //Create a User object with the updated values
        User updatedUser = new User(userId, username, email, password);

        //Call the update method to update the user in the database
        User.update(updatedUser);
        Object user = DaoFactory.getUsersDao().findByUsername(username);
        DaoFactory.getUsersDao().edit(user);
        request.getSession().removeAttribute("user");
        request.getSession().setAttribute("user", user);
        response.sendRedirect("/profile");


    }
}


