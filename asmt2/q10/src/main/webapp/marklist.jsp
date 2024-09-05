<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mark List</title>
</head>
<body>
    <h1>Student Mark List</h1>

    <%
        // Database connection parameters
        String url = "jdbc:oracle:thin:@localhost:1521:xe"; // Update with your database URL
        String user = "system"; // Update with your database username
        String password = "root"; // Update with your database password

        // Get Register Number from form
        String registerNo = request.getParameter("registerNo");

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            // Load Oracle JDBC driver
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Establish database connection
            conn = DriverManager.getConnection(url, user, password);

            // Prepare SQL query
            String sql = "SELECT * FROM student_marks WHERE register_no = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, registerNo);

            // Execute query and retrieve data
            rs = pstmt.executeQuery();

            if (rs.next()) {
                // Display mark list
                out.println("<table border='1'>");
                out.println("<tr><th>Register Number</th><th>Name</th><th>Marks</th></tr>");
                do {
                    out.println("<tr>");
                    out.println("<td>" + rs.getString("register_no") + "</td>");
                    out.println("<td>" + rs.getString("name") + "</td>");
                    out.println("<td>" + rs.getInt("marks") + "</td>");
                    out.println("</tr>");
                } while (rs.next());
                out.println("</table>");
            } else {
                out.println("<p>No records found for Register Number: " + registerNo + "</p>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p>Error retrieving data: " + e.getMessage() + "</p>");
        } finally {
            // Close resources
            try {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>
</body>
</html>
