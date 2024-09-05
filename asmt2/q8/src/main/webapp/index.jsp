<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSTL Function Tags Demo</title>
</head>
<body>
    <h2>JSTL Function Tags Demonstration</h2>

    <%
        // Create a String array in a JSP scriptlet
        String[] fruits = {"apple", "banana", "cherry"};
        request.setAttribute("fruitsArray", fruits); // Set the array as an attribute
    %>

    <h3>Join</h3>
    <p>Join array ["apple", "banana", "cherry"] with ", ": ${fn:join(fruitsArray, ", ")}</p>

    <h3>Contains</h3>
    <p>Contains "world" in "Hello world": ${fn:contains("Hello world", "world")}</p>

    <h3>Contains Ignore Case</h3>
    <p>Contains Ignore Case "WORLD" in "Hello world": ${fn:containsIgnoreCase("Hello world", "WORLD")}</p>

    <h3>Ends With</h3>
    <p>Ends with "world" in "Hello world": ${fn:endsWith("Hello world", "world")}</p>

    <h3>Escape XML</h3>
    <p>Escape XML for "&lt;Hello&gt;": ${fn:escapeXml("<Hello>")}</p>

    <h3>Index Of</h3>
    <p>Index of "world" in "Hello world": ${fn:indexOf("Hello world", "world")}</p>

    <h3>Length</h3>
    <p>Length of "Hello world": ${fn:length("Hello world")}</p>

    <h3>Replace</h3>
    <p>Replace "world" with "JSP" in "Hello world": ${fn:replace("Hello world", "world", "JSP")}</p>

    <h3>Split</h3>
    <p>Split "apple,banana,cherry" by ",": 
        ${fn:split("apple,banana,cherry", ",")[0]} 
        ${fn:split("apple,banana,cherry", ",")[1]} 
        ${fn:split("apple,banana,cherry", ",")[2]}
    </p>

    <h3>Starts With</h3>
    <p>Starts with "Hello" in "Hello world": ${fn:startsWith("Hello world", "Hello")}</p>

    <h3>Substring</h3>
    <p>Substring from index 6 to 11 in "Hello world": ${fn:substring("Hello world", 6, 11)}</p>

    <h3>Substring After</h3>
    <p>Substring after "Hello" in "Hello world": ${fn:substringAfter("Hello world", "Hello")}</p>

    <h3>Substring Before</h3>
    <p>Substring before "world" in "Hello world": ${fn:substringBefore("Hello world", "world")}</p>

    <h3>To Lower Case</h3>
    <p>Convert "HELLO WORLD" to lower case: ${fn:toLowerCase("HELLO WORLD")}</p>

    <h3>To Upper Case</h3>
    <p>Convert "hello world" to upper case: ${fn:toUpperCase("hello world")}</p>

    <h3>Trim</h3>
    <p>Trim "  Hello world  ": ${fn:trim("  Hello world  ")}</p>
</body>
</html>
