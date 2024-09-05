<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Update Employee Result</title>
</head>
<body>
    <h2>Update Employee Result</h2>

    <%
        // Get the form data
        String empid = request.getParameter("empid");
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String desg = request.getParameter("desg");
        String salary = request.getParameter("salary");

        // Database connection variables
        String dbURL = "jdbc:oracle:thin:@localhost:1521:xe"; // Replace with your database URL
        String dbUser = "system"; // Replace with your DB username
        String dbPassword = "root"; // Replace with your DB password

        Connection conn = null;
        PreparedStatement pstmt = null;
        String updateSQL = "UPDATE employee SET name = ?, age = ?, desg = ?, salary = ? WHERE empid = ?";

        try {
            // Load the JDBC driver
            Class.forName("oracle.jdbc.driver.OracleDriver");

            // Establish the connection
            conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

            // Prepare the SQL statement
            pstmt = conn.prepareStatement(updateSQL);
            pstmt.setString(1, name);
            pstmt.setInt(2, Integer.parseInt(age));
            pstmt.setString(3, desg);
            pstmt.setDouble(4, Double.parseDouble(salary));
            pstmt.setInt(5, Integer.parseInt(empid));

            // Execute the update
            int rowsUpdated = pstmt.executeUpdate();

            // Display success or error message
            if (rowsUpdated > 0) {
                out.println("<p>Updating Success</p>");
            } else {
                out.println("<p>Updating Error: Employee ID not found.</p>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p>Updating Error: " + e.getMessage() + "</p>");
        } finally {
            // Clean up
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        }
    %>

    <form action="employeeForm.html" method="get">
        <input type="submit" value="Update Another Employee">
    </form>
</body>
</html>
