package pl.coderslab.users;

import pl.coderslab.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/user/list")
public class UserList extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDAO userDao = new UserDAO();
        request.setAttribute("users", userDao.findAll());
       // request.setAttribute("users1", "2");
        getServletContext().getRequestDispatcher("/users/list.jsp").forward(request, response);



        response.sendRedirect("/users/list.jsp");
    }
}