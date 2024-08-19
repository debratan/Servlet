package sixthP;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/SessionTrackingServlet")
public class SessionTrackingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession(true);
        String visitStatus;

        if (session.isNew()) {
            visitStatus = "This is your first visit to this page.";
        } else {
            visitStatus = "You have visited this page before.";
        }

        out.println("<h1>Session Tracking</h1>");
        out.println("<h2>" + visitStatus + "</h2>");

        // Optionally, to simulate session destruction
        // session.invalidate();

        out.close();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
