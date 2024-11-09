package q6;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Retrieve the username and password from the request
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            // Load and parse the users.xml file
            File xmlFile = new File(getServletContext().getRealPath("/WEB-INF/users.xml"));
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.parse(xmlFile);

            // Find matching username and password
            NodeList users = doc.getElementsByTagName("user");
            boolean loginSuccess = false;
            
            for (int i = 0; i < users.getLength(); i++) {
                String xmlUsername = users.item(i).getAttributes().getNamedItem("name").getTextContent();
                String xmlPassword = users.item(i).getAttributes().getNamedItem("password").getTextContent();
                
                if (xmlUsername.equals(username) && xmlPassword.equals(password)) {
                    loginSuccess = true;
                    break;
                }
            }

            // Set the response message based on login success
            response.setContentType("text/plain");
            if (loginSuccess) {
                response.getWriter().write("Login successful!");
            } else {
                response.getWriter().write("Invalid username or password.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error processing the login.");
        }
    }
}
