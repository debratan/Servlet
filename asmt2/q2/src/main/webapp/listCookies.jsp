<%@ page import="jakarta.servlet.http.Cookie" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>List of Cookies</title>
</head>
<body>
    <h2>Cookies Stored in Your Browser:</h2>

    <%
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                out.println("<p>Name: " + cookie.getName() + ", Value: " + cookie.getValue() + "</p>");
            }
        } else {
            out.println("<p>No cookies found.</p>");
        }
    %>

    <form action="index.jsp" method="get">
        <input type="submit" value="Back to Home">
    </form>
</body>
</html>
