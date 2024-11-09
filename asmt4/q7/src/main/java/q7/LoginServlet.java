package q7;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/mydatabase?useSSL=false&serverTimezone=UTC";
    private static final String DB_USER = "dev";
    private static final String DB_PASSWORD = "root";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean loginSuccess = false;
        response.setContentType("text/plain");

        try {
            // Ensure the driver is loaded explicitly if necessary
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
                String query = "SELECT * FROM users WHERE username = ? AND password = ?";
                PreparedStatement stmt = conn.prepareStatement(query);
                stmt.setString(1, username);
                stmt.setString(2, password);
                ResultSet rs = stmt.executeQuery();

                if (rs.next()) {
                    loginSuccess = true;
                }
            } catch (Exception e) {
                e.printStackTrace();
                response.getWriter().write("Error connecting to the database.");
                return;
            }

            // Return the result to the client
            if (loginSuccess) {
                response.getWriter().write("Login successful!");
            } else {
                response.getWriter().write("Invalid username or password.");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            response.getWriter().write("Database driver not found.");
        }
    }
}
