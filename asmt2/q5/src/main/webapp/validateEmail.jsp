<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.regex.Pattern" %>

<!DOCTYPE html>
<html>
<head>
    <title>Email Validation Result</title>
</head>
<body>
    <h2>Email Validation Result</h2>

    <%
        String email = request.getParameter("email");
        String message = "Invalid email ID.";

        if (email != null) {
            // Regular expression to match the given criteria
            String emailRegex = "^[\\w-\\.]+@[\\w-]+\\.[a-zA-Z]{2,}$";
            Pattern pattern = Pattern.compile(emailRegex);

            // Check if the email matches the pattern and additional conditions
            if (pattern.matcher(email).matches()) {
                String domainPart = email.substring(email.indexOf('@') + 1);
                if (domainPart.contains(".") && domainPart.length() >= 3) {
                    String partBeforeDot = domainPart.substring(0, domainPart.lastIndexOf('.'));
                    if (partBeforeDot.length() >= 2) {
                        message = "Valid email ID.";
                    }
                }
            }
        }

        out.println("<p>" + message + "</p>");
    %>

    <form action="index.jsp" method="get">
        <input type="submit" value="Try Again">
    </form>
</body>
</html>
