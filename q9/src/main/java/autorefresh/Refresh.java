package autorefresh;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Refresh")
public class Refresh extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setIntHeader("refresh", 30); // Refresh the page every 30 seconds
        res.setContentType("text/html");

        PrintWriter out = res.getWriter();
        java.util.Date date = new java.util.Date();

        out.println("<html><body bgcolor='black'>");
        out.println("<h1 style='color:green; text-align:center;'>" + date + "</h1>");
        out.println("</body></html>");
        
        out.close();
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        doGet(req, res);
    }
}
