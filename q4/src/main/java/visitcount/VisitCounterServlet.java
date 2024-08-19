package visitcount;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/VisitCounterServlet")
public class VisitCounterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        int visitCount = 0;
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("visitCount")) {
                    visitCount = Integer.parseInt(cookie.getValue());
                }
            }
        }

        visitCount++;

        Cookie visitCountCookie = new Cookie("visitCount", Integer.toString(visitCount));
        visitCountCookie.setMaxAge(60 * 60 * 24 * 365); // 1 year
        response.addCookie(visitCountCookie);

        out.println("<h1>You have visited this site: " + visitCount + " times.</h1>");
        out.close();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
