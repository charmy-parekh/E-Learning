package Eportal.servlet;
import databaseConnect.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/verify")
public class verify extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        LoginVerification obj = new LoginVerification();

        String form_email = req.getParameter("email");
        String form_password = req.getParameter("pass");

        res.setContentType("text/plain");
        res.setCharacterEncoding("UTF-8");

        if (obj.LoginVerify(form_email, form_password)) {
            HttpSession session = req.getSession();
            session.setAttribute("useremail", form_email);
            res.getWriter().write("success");
        } else {
            res.getWriter().write("Please enter valid username or password.");
        }
    }
}
