package comm;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String action = req.getParameter("action");
        res.setContentType("text/html");
        
        if ("hello".equals(action)) {
            res.getWriter().println("<html><body bgcolor='blue'>");
            res.getWriter().println("<h1>Hello, how are you?</h1>");
            res.getWriter().println("</body></html>");
        } else if ("greet".equals(action)) {
            res.getWriter().println("<html><body bgcolor='red'>");
            res.getWriter().println("<h1>Good morning! Nice to meet you!</h1>");
            res.getWriter().println("</body></html>");
        } else if ("wonderful".equals(action)) {
            res.getWriter().println("<html><body bgcolor='green'>");
            res.getWriter().println("<h1>The day is excellent, great, and wonderful!</h1>");
            res.getWriter().println("</body></html>");
        } else {
            res.getWriter().println("<html><body>");
            res.getWriter().println("<h1>Invalid action</h1>");
            res.getWriter().println("</body></html>");
        }
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        doGet(req, res);
    }
}
