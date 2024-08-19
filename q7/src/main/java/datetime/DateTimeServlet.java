package datetime;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/datetime")
public class DateTimeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setIntHeader("refresh", 1);
        res.setContentType("text/html");

        PrintWriter out = res.getWriter();
        Date date = new Date();

        out.println("<html><body style='background-color:black;'>");
        out.println("<h1 style='color:yellow; text-align:center;'>" + date + "</h1>");
        out.println("</body></html>");
        
        out.close();
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        doGet(req, res);
    }
}
