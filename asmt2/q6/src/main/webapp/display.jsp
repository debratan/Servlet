<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display Intrinsic Object Values</title>
</head>
<body>
    <h1>Use of Intrinsic Objects in JSP</h1>
    <table>
        <tr>
            <th>Intrinsic Object</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>Request Object</td>
            <td>
                <ul>
                    <li>Request URL: <%= request.getRequestURL() %></li>
                    <li>Request URI: <%= request.getRequestURI() %></li>
                    <li>Query String: <%= request.getQueryString() %></li>
                    <li>Method: <%= request.getMethod() %></li>
                    <li>Name: <%= request.getParameter("name") %></li>
                    <li>Email: <%= request.getParameter("email") %></li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>Response Object</td>
            <td>
                <ul>
                    <li>Content Type: <%= response.getContentType() %></li>
                    <li>Character Encoding: <%= response.getCharacterEncoding() %></li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>Session Object</td>
            <td>
                <ul>
                    <li>Session ID: <%= session.getId() %></li>
                    <li>Creation Time: <%= session.getCreationTime() %></li>
                    <li>Last Accessed Time: <%= session.getLastAccessedTime() %></li>
                </ul>
            </td>
        </tr>
    </table>
</body>
</html>