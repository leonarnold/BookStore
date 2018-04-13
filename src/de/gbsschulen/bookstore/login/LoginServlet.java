package de.gbsschulen.bookstore.login;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet{

    private LoginService loginService = new LoginService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String loginname = req.getParameter("loginname");
        String password = req.getParameter("password");
        if (loginService.checkPassword(loginname, password)) {
            //req.setAttribute("loginname", loginname);
            //System.out.println("Test");

            //loginService.saveLogin(new User(loginname,password));

            //req.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(req, resp);
            req.getSession().setAttribute("loginname", loginname);
            resp.sendRedirect("listBooks.do");

        } else {
            req.setAttribute("error", "LoginServlet war falsch!");
            req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);

        }


    }
}
