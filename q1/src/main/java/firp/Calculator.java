package firp;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Calculator extends HttpServlet {
    public void service(HttpServletRequest req, HttpServletResponse res) throws IOException {
        int i = Integer.parseInt(req.getParameter("n1"));
        int j = Integer.parseInt(req.getParameter("n2"));
        String q = req.getParameter("o");
        
        PrintWriter out = res.getWriter();
        
        switch (q.charAt(0)) {
            case '+':
                int sum = i + j;
                out.println("Addition is: " + sum);
                break;
            case '-':
                int diff = i - j;
                out.println("Subtraction is: " + diff);
                break;
            case '*':
                int prod = i * j;
                out.println("Multiplication is: " + prod);
                break;
            case '/':
                if (j != 0) {
                    double div = (double) i / j;
                    out.println("Division is: " + div);
                } else {
                    out.println("Cannot divide by zero");
                }
                break;
            default:
                out.println("Invalid operator");
        }
    }
}
