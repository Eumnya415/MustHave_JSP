package servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class HelloServlet extends HttpServlet {
    private static final long serialVersionUID = 1L; // L : Long 타입

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("message", "집에 가고 싶다........!!");
        req.getRequestDispatcher("/12Servlet/HelloServlet.jsp")
                .forward(req, resp);

    }
}
