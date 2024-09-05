<%@ page import="java.util.Date" %>
<%
    String name = (String) session.getAttribute("name");
    Date startTime = (Date) session.getAttribute("startTime");
    Date endTime = new Date();

    long duration = (endTime.getTime() - startTime.getTime()) / 1000;
    session.invalidate();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Logout Page</title>
</head>
<body>
    <h2>Thank You, <%= name %>!</h2>
    <p>Duration of usage: <%= duration %> seconds</p>
</body>
</html>
