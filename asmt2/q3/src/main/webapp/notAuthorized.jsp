<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Not Authorized</title>
</head>
<body>
    <h2>Hello, <%= request.getAttribute("name") %>!</h2>
    <p>You are not authorized to visit the site.</p>
</body>
</html>
