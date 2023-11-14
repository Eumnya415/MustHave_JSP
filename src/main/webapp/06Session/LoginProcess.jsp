<%@ page import="membership.MemberDAO" %>
<%@ page import="membership.MemberDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%
    String userId = request.getParameter("user_id");
    String userPwd = request.getParameter("user_pw");

    String mariadbDriver = application.getInitParameter("MariaDB_Driver");
    String mariadbURL = application.getInitParameter("MariaDB_URL");
    String mariadbId = application.getInitParameter("MariaDB_Id");
    String mariadbPwd = application.getInitParameter("MariaDB_Pwd");

    MemberDAO dao = new MemberDAO(mariadbDriver, mariadbURL, mariadbId, mariadbPwd);
    MemberDTO memberDTO = dao.getMemberDTO(userId, userPwd);
    dao.close();

    if (memberDTO.getId() !=null) {
        session.setAttribute("UserId", memberDTO.getId());
        session.setAttribute("UserName", memberDTO.getName());
        response.sendRedirect("LoginForm.jsp");
    }
    else {

        request.setAttribute("LoginErrMsg", "로그인 오류입니다.");
        request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
