package servlet;

import membership.MemberDAO;
import membership.MemberDTO;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class MemberAuth extends HttpServlet {
    private static final long serialVersionUID = 1L;
    MemberDAO dao;


    @Override
    public void init() throws ServletException {
        ServletContext application = this.getServletContext();


        String driver = application.getInitParameter("MariaDB_Driver");
        String connectUrl = application.getInitParameter("MariaDB_URL");
        String oId = application.getInitParameter("MariaDB_Id");
        String oPass = application.getInitParameter("MariaDB_Pwd");

        dao = new MemberDAO(driver, connectUrl, oId, oPass);
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String admin_id = this.getInitParameter("admin_id");

        String id = req.getParameter("id");
        String pass = req.getParameter("pass");

        MemberDTO memberDTO = dao.getMemberDTO(id, pass);

        String memberName = memberDTO.getName();
        if (memberName != null) {
            req.setAttribute("authMessage", memberName + "하이루 방가방가룽 ~~");
        } else {
            if (admin_id.equals(id))
                req.setAttribute("authMessage", admin_id + "는 최고 관리자입니다.");
            else
                req.setAttribute("authMessage", "귀하는 회원이 아닙니다.");
        }
        req.getRequestDispatcher("/12Servlet/MemberAuth.jsp").forward(req, resp);
    }

    @Override
    public void destroy() {
        dao.close();
    }
}