package login;

import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		String name = req.getParameter("username");
		String passwd = req.getParameter("password");
		if (name.equals("admin") && passwd.equals("admin")) {

			out.println("<h2>Hellow Admin</h2>");
		} else {
			out.println("<h2>Login Failed</h2>");
		}
	}
}
