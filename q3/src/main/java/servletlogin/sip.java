package servletlogin;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class sip extends HttpServlet {
    public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();

        String name = req.getParameter("username");
        String passwd = req.getParameter("password");

        if (passwd.equals("Servlet")) {
            RequestDispatcher rd = req.getRequestDispatcher("nextS");
            rd.forward(req, res);
        } else {
            out.print("<h3>Incorrect password</h3>");
            RequestDispatcher rd = req.getRequestDispatcher("/index.html");
            rd.include(req, res);
        }
    }
}
