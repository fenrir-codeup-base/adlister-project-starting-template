package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

        // Validate input
        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (!password.equals(passwordConfirmation));

        if (inputHasErrors) {
            if (!password.equals(passwordConfirmation)) {
                response.sendRedirect("/register?error=password");
            } else {
                response.sendRedirect("/register");
            }
            return;
        }
        // Password validation
        String passwordValidation = validatePassword(password);
        if (!passwordValidation.isEmpty()) {
            response.sendRedirect("/registration?error= passwordValidation");
            return;
        }

        // Check if username already exists
        User existingUser = DaoFactory.getUsersDao().findByUsername(username);
        if (existingUser != null) {
            response.sendRedirect("/register?error=username");
            return;
        }

        // Create and save a new user
        User user = new User(username, email, password);

        // Hash the password
        String hash = Password.hash(user.getPassword());
        user.setPassword(hash);
        //Inserts the user into the database using the DaoFactory and redirects to login
        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");
    }

    private String validatePassword(String password) {
        if (password.length() < 4){
            return "Password must be at least 4 characters long.";
        }
        if (!password.matches(".*\\d*.")){
            return "Password must contain at least one digit.";
        }
        if (!password.matches(".*[A-Z].*")){
            return "Password must contain at least one uppercase letter.";
        }
        if(!password.matches(".*[!@#$%^&*].*")){
            return "Password must contain one special character.";
        }
        return "";
    }
}
