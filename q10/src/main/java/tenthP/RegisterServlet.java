package tenthP;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve form parameters
        String firstName = request.getParameter("fname");
        String middleName = request.getParameter("mname");
        String lastName = request.getParameter("lname");
        String login = request.getParameter("name");
        String password = request.getParameter("passwd");
        String confirmPassword = request.getParameter("cpasswd");

        // StringBuilder for error messages
        StringBuilder errors = new StringBuilder();

        // Validation
        if (firstName == null || !firstName.matches("[A-Za-z]+")) {
            errors.append("First name must contain only alphabets.<br/>");
        }
        if (lastName == null || !lastName.matches("[A-Za-z]+")) {
            errors.append("Last name must contain only alphabets.<br/>");
        }
        if (middleName != null && !middleName.matches("[A-Za-z]*")) {
            errors.append("Middle name must contain only alphabets.<br/>");
        }
        if (login == null || login.trim().isEmpty()) {
            errors.append("Desired login is required.<br/>");
        }
        if (password.length() < 6 || !password.matches(".*[A-Za-z].*") || !password.matches(".*[0-9].*") || !password.matches(".*[^A-Za-z0-9].*")) {
            errors.append("Password must be at least 6 characters long and include alphabets, a number, and a special character.<br/>");
        }
        if (!password.equals(confirmPassword)) {
            errors.append("Passwords do not match.<br/>");
        }

        // Response
        if (errors.length() > 0) {
            out.println("<html><body>" + errors.toString() + "</body></html>");
        } else {
            out.println("<html><body>Registration Successful</body></html>");
        }

        out.close();
    }
}
