<%@ page import="java.io.IOException" %>
<%
    String name = request.getParameter("name");
    int age = Integer.parseInt(request.getParameter("age"));

    if (age < 18) {
        request.setAttribute("name", name);
        request.getRequestDispatcher("notAuthorized.jsp").forward(request, response);
    } else {
        request.setAttribute("name", name);
        request.getRequestDispatcher("welcome.jsp").forward(request, response);
    }
%>
