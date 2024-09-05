<%@ page import="java.util.Date" %>
<%
    String name = request.getParameter("name");
    Date startTime = new Date();

    // Store name and start time in session
    session.setAttribute("name", name);
    session.setAttribute("startTime", startTime);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
    <style>
        .header {
            text-align: right;
        }
    </style>
</head>
<body>
    <div class="header">
        Start Time: <%= startTime %>
    </div>
    <h2>Hello, <%= name %>!</h2>
    <form action="logout.jsp" method="post">
        <input type="submit" value="Logout">
    </form>
</body>
</html>
