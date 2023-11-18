<%--<%@ page import="java.util.List"%>--%>
<%--<%@ page import="java.util.HashMap"%>--%>
<%--<%@ page import="java.util.Map"%>--%>
<%--<%@ page import="model1.board.BoardDAO"%>--%>
<%--<%@ page import="model1.board.BoardDTO"%>--%>
<%--<%@ page import="utils.BoardPage" %>--%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--         pageEncoding="UTF-8"%>--%>
<%--<%--%>
<%--    // DAO를 생성해 DB에 연결--%>
<%--    BoardDAO dao = new BoardDAO(application);--%>

<%--// 사용자가 입력한 검색 조건을 Map에 저장--%>
<%--    Map<String, Object> param = new HashMap<String, Object>();--%>
<%--    String searchField = request.getParameter("searchField");--%>
<%--    String searchWord = request.getParameter("searchWord");--%>
<%--    if (searchWord != null) {--%>
<%--        param.put("searchField", searchField);--%>
<%--        param.put("searchWord", searchWord);--%>
<%--    }--%>

<%--    int totalCount = dao.selectCount(param);  // 게시물 수 확인--%>

<%--    //전체 페이지 수 확인--%>
<%--    int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));--%>
<%--    int blockPage = Integer.parseInt(application.getInitParameter("POSTS_PER_BLOCK"));--%>
<%--    int totalPage = (int)Math.ceil((double)totalCount / pageSize);--%>

<%--    // 현재 페이지 확인--%>
<%--    int pageNum = 1;--%>
<%--    String pageTemp = request.getParameter("pageNum");--%>
<%--    if (pageTemp != null && !pageTemp.equals(""))--%>
<%--        pageNum = Integer.parseInt(pageTemp);--%>

<%--    // 목록에 출력할 게시물 범위 계산--%>
<%--    int start = (pageNum - 1) * pageSize + 1;--%>
<%--    int end = pageNum * pageSize;--%>
<%--    param.put("start", start);--%>
<%--    param.put("end", end);--%>

<%--    List<BoardDTO> boardLists = dao.selectList(param);  // 게시물 목록 받기--%>
<%--    dao.close();  // DB 연결 닫기--%>
<%--%>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <title>회원제 게시판</title>--%>
<%--    <style>--%>
<%--        /* 테이블 스타일 */--%>
<%--        table {--%>
<%--            border-collapse: collapse;--%>
<%--            width: 90%;--%>
<%--            margin: 10px 0;--%>
<%--        }--%>

<%--        /* 테이블 셀 스타일 */--%>
<%--        th, td {--%>
<%--            border: 1px solid #dddddd;--%>
<%--            text-align: left;--%>
<%--            padding: 8px;--%>
<%--        }--%>

<%--        /* 테이블 헤더 스타일 */--%>
<%--        th {--%>
<%--            background-color: #f2f2f2;--%>
<%--        }--%>

<%--        /* 버튼 스타일 */--%>
<%--        button {--%>
<%--            padding: 10px;--%>
<%--            background-color: #4CAF50;--%>
<%--            color: white;--%>
<%--            border: none;--%>
<%--            border-radius: 5px;--%>
<%--            cursor: pointer;--%>
<%--        }--%>



<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="../Common/Link.jsp" />  <!-- 공통 링크 -->--%>

<%--<h2>목록 보기(List) - 현재 페이지 : <%= pageNum %> (전체 : <%= totalPage %>)</h2>--%>
<%--<!-- 검색폼 -->--%>
<%--<form method="get">--%>
<%--    <table style="border: none; width: 90%;">--%>
<%--        <tr>--%>
<%--            <td style="text-align: center;">--%>
<%--                <select name="searchField">--%>
<%--                    <option value="title">제목</option>--%>
<%--                    <option value="content">내용</option>--%>
<%--                </select>--%>
<%--                <input type="text" name="searchWord" />--%>
<%--                <input type="submit" value="검색하기" />--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </table>--%>
<%--</form>--%>
<%--<!-- 게시물 목록 테이블(표) -->--%>
<%--<table style="border: none; width: 90%;">--%>
<%--    <!-- 각 칼럼의 이름 -->--%>
<%--    <tr>--%>
<%--        <th style="text-align: center; width: 10%;">--%>
<%--            번호--%>
<%--        </th>--%>
<%--        <th style="text-align: center; width: 50%;">--%>
<%--            제목--%>
<%--        </th>--%>
<%--        <th style="text-align: center; width: 15%;">--%>
<%--            작성자--%>
<%--        </th>--%>
<%--        <th style="text-align: center; width: 10%;">--%>
<%--            조회수--%>
<%--        </th>--%>
<%--        <th style="text-align: center; width: 15%;">--%>
<%--            작성일--%>
<%--        </th>--%>
<%--    </tr>--%>
<%--    <!-- 목록의 내용 -->--%>
<%--    <%--%>
<%--        if (boardLists.isEmpty()) {--%>
<%--            // 게시물이 하나도 없을 때--%>
<%--    %>--%>
<%--    <tr>--%>
<%--        <td colspan="5" style="text-align: center;">--%>
<%--            등록된 게시물이 없습니다^^*--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--    }--%>
<%--    else {--%>
<%--        // 게시물이 있을 때--%>
<%--        int virtualNum = 0;  // 화면상에서의 게시물 번호--%>
<%--        int countNum = 0;--%>
<%--        for (BoardDTO dto : boardLists)--%>
<%--        {--%>
<%--            virtualNum = totalCount - (((pageNum - 1) * pageSize) + countNum++);  // 전체 게시물 수에서 시작해 1씩 감소--%>
<%--    %>--%>
<%--    <tr style="text-align: center;">--%>
<%--        <td style="text-align: center;">--%>
<%--            <%= virtualNum %></td>  <!--게시물 번호-->--%>
<%--        <td style="text-align: left;">  <!--제목(+ 하이퍼링크)-->--%>
<%--            <a href="View.jsp?num=<%= dto.getNum() %>"><%= dto.getTitle() %></a>--%>
<%--        </td>--%>
<%--        <td style="text-align: center;">--%>
<%--            <%= dto.getId() %>  <!-- 작성자 아이디 -->--%>
<%--        </td>--%>
<%--        <td style="text-align: center;">--%>
<%--            <%= dto.getVisitcount() %> <!-- 조회수 -->--%>
<%--        </td>--%>
<%--        <td style="text-align: center;">--%>
<%--            <%= dto.getPostdate() %> <!-- 작성일 -->--%>
<%--        </td>--%>
<%--    </tr>--%>
<%--    <%--%>
<%--            }--%>
<%--        }--%>
<%--    %>--%>
<%--</table>--%>
<%--<!--목록 하단의 [글쓰기] 버튼-->--%>
<%--<table style="border: none; width: 90%;">--%>
<%--    <tr style="text-align: center;">--%>
<%--        <td>--%>
<%--            <%= BoardPage.pagingStr(totalCount, pageSize, blockPage, pageNum, request.getRequestURI()) %>--%>
<%--        </td>--%>

<%--        <td><button type="button" onclick="location.href='Write.jsp';">글쓰기--%>
<%--        </button></td>--%>
<%--    </tr>--%>
<%--</table>--%>
<%--</body>--%>
<%--</html>--%>




<%@ page import="java.util.List"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<%@ page import="model1.board.BoardDAO"%>
<%@ page import="model1.board.BoardDTO"%>
<%@ page import="utils.BoardPage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    // DAO를 생성해 DB에 연결
    BoardDAO dao = new BoardDAO(application);

// 사용자가 입력한 검색 조건을 Map에 저장
    Map<String, Object> param = new HashMap<String, Object>();
    String searchField = request.getParameter("searchField");
    String searchWord = request.getParameter("searchWord");
    if (searchWord != null) {
        param.put("searchField", searchField);
        param.put("searchWord", searchWord);
    }

    int totalCount = dao.selectCount(param);  // 게시물 수 확인

/*** 페이지 처리 start ***/
// 전체 페이지 수 계산
    int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
    int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));
    int totalPage = (int)Math.ceil((double)totalCount / pageSize); // 전체 페이지 수

// 현재 페이지 확인
    int pageNum = 1;  // 기본값
    String pageTemp = request.getParameter("pageNum");
    if (pageTemp != null && !pageTemp.equals(""))
        pageNum = Integer.parseInt(pageTemp); // 요청받은 페이지로 수정

// 목록에 출력할 게시물 범위 계산
    int start = (pageNum - 1) * pageSize + 1;  // 첫 게시물 번호
    int end = pageNum * pageSize; // 마지막 게시물 번호
    param.put("start", start);
    param.put("end", end);
/*** 페이지 처리 end ***/

    List<BoardDTO> boardLists = dao.selectListPage(param);  // 게시물 목록 받기
    dao.close();  // DB 연결 닫기
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원제 게시판</title>
    <style>
        /* 테이블 스타일 */
        table {
            border-collapse: collapse;
            width: 90%;
            margin: 10px 0;
        }

        /* 테이블 셀 스타일 */
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        /* 테이블 헤더 스타일 */
        th {
            background-color: #f2f2f2;
        }

        /* 버튼 스타일 */
        button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }


        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;  /* 뷰포트의 높이를 100%로 설정 */
            margin: 0;
        }

        form {
            /*width: 90%;*/
            /*margin : auto;*/
            /*display: block;*/
            /*justify-content: center;*/
            /*align-items: center;*/
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            width: 100%;
        }

    </style>

</head>
<body>

<jsp:include page="../Common/Link.jsp" />  <!-- 공통 링크 -->

<h2>목록 보기(List) - 현재 페이지 : <%= pageNum %> (전체 : <%= totalPage %>)</h2>

<%--기존 코드--%>
<%--<!-- 검색폼 -->--%>
<%--<form method="get">--%>
<%--    <table border="1" width="90%">--%>
<%--        <tr>--%>
<%--            <td align="center">--%>
<%--                <select name="searchField">--%>
<%--                    <option value="title">제목</option>--%>
<%--                    <option value="content">내용</option>--%>
<%--                </select>--%>
<%--                <input type="text" name="searchWord" />--%>
<%--                <input type="submit" value="검색하기" />--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </table>--%>
<%--</form>--%>

<%--수정 코드--%>
<!-- 검색폼 -->
<form method="get">
    <table style="border: none; width: 90%;">
        <tr>
            <td style="text-align: center;">
                <select name="searchField">
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                </select>
                <input type="text" name="searchWord" />
                <input type="submit" value="검색하기" />
            </td>
        </tr>
    </table>
</form>



<%-- 기존 코드--%>
<%--<!-- 게시물 목록 테이블(표) -->--%>
<%--<table border="1" width="90%">--%>
<%--    <!-- 각 칼럼의 이름 -->--%>
<%--    <tr>--%>
<%--        <th width="10%">번호</th>--%>
<%--        <th width="50%">제목</th>--%>
<%--        <th width="15%">작성자</th>--%>
<%--        <th width="10%">조회수</th>--%>
<%--        <th width="15%">작성일</th>--%>
<%--    </tr>--%>

<%-- 수정 코드--%>
<!-- 게시물 목록 테이블(표) -->
<table style="border: none; width: 90%;">
    <!-- 각 칼럼의 이름 -->
    <tr>
        <th style="text-align: center; width: 10%;">
            번호
        </th>
        <th style="text-align: center; width: 50%;">
            제목
        </th>
        <th style="text-align: center; width: 15%;">
            작성자
        </th>
        <th style="text-align: center; width: 10%;">
            조회수
        </th>
        <th style="text-align: center; width: 15%;">
            작성일
        </th>
    </tr>


    <!-- 목록의 내용 -->
    <%
        if (boardLists.isEmpty()) {
            // 게시물이 하나도 없을 때
    %>
    <tr>
        <td colspan="5" align="center">
            등록된 게시물이 없습니다^^*
        </td>
    </tr>
    <%
    }
    else {
        // 게시물이 있을 때
        int virtualNum = 0;  // 화면상에서의 게시물 번호
        int countNum = 0;
        for (BoardDTO dto : boardLists)
        {
            // virtualNumber = totalCount--;  // 전체 게시물 수에서 시작해 1씩 감소
            virtualNum = totalCount - (((pageNum - 1) * pageSize) + countNum++);
    %>

<%--    기존 코드--%>
<%--    <tr style="text-align: center;">--%>
<%--        <td style="text-align: center;">--%>
<%--        <td><%= virtualNum %></td>  <!--게시물 번호-->--%>
<%--        <td align="left">  <!--제목(+ 하이퍼링크)-->--%>
<%--            <a href="View.jsp?num=<%= dto.getNum() %>"><%= dto.getTitle() %></a>--%>
<%--        </td>--%>
<%--        <td align="center"><%= dto.getId() %></td>          <!--작성자 아이디-->--%>
<%--        <td align="center"><%= dto.getVisitcount() %></td>  <!--조회수-->--%>
<%--        <td align="center"><%= dto.getPostdate() %></td>    <!--작성일-->--%>
<%--    </tr>--%>


<%--    수정 코드--%>
    <tr style="text-align: center;">
        <td style="text-align: center;">
            <%= virtualNum %></td>  <!--게시물 번호-->
        <td style="text-align: left;">  <!--제목(+ 하이퍼링크)-->
            <a href="View.jsp?num=<%= dto.getNum() %>"><%= dto.getTitle() %></a>
        </td>
        <td style="text-align: center;">
            <%= dto.getId() %>  <!-- 작성자 아이디 -->
        </td>
        <td style="text-align: center;">
            <%= dto.getVisitcount() %> <!-- 조회수 -->
        </td>
        <td style="text-align: center;">
            <%= dto.getPostdate() %> <!-- 작성일 -->
        </td>
    </tr>
    <%
            }
        }
    %>
</table>
<!--목록 하단의 [글쓰기] 버튼-->
<table style="border: none; width: 90%;">
    <tr style="text-align: center;">
        <!--페이징 처리-->
        <td style="text-align: center;">
            <%= BoardPage.pagingStr(totalCount, pageSize,
                    blockPage, pageNum, request.getRequestURI()) %>
        </td>

        <!--글쓰기 버튼-->
        <td style="text-align: center;"><button type="button" onclick="location.href='Write.jsp';">글쓰기
        </button></td>

    </tr>
</table>

</body>
</html>
