<%@ page import="model.board.BoardBean" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 11. 8.
  Time: 오후 4:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    BoardBean boardBean = (BoardBean) request.getAttribute("bean");
%>
<html>
<body>
    <table border="1">
        <tr>
            <td>글번호</td>
            <td><%=boardBean.getNo()%></td>
            <td>제목</td>
            <td><%=boardBean.getTitle()%></td>
        </tr>
        <tr>
            <td>작성자</td>
            <td><%=boardBean.getAuthor()%></td>
            <td>수정일</td>
            <td><%=boardBean.getDate()%></td>
        </tr>
        <tr>
            <td colspan="4">
                <%=boardBean.getContents()%>
            </td>
        </tr>
    </table>
    <br><br>

    <h1>댓글</h1>
    <table border="1">
        <tr>
            <td>작성자</td>
            <td>내용</td>
            <td>작성일자</td>
        </tr>
        <%
            ArrayList<BoardBean> reply = (ArrayList<BoardBean>) request.getAttribute("reply");
            for (int i=0; i<reply.size() ;i++) {
                BoardBean rep = reply.get(i);
        %>
        <tr>
            <td><%=rep.getAuthor()%></td>
            <td><%=rep.getContents()%></td>
            <td><<%=rep.getDate()%>/td>
            <td><button onclick="href='#'">수정하기</button></td>
            <td><button onclick="href='#'">삭제하기</button></td>
        </tr>
        <% } %>
    </table>


    <form action="/register?type=2" method="post">
        <table border="1">
            <tr>
                <td rowspan="3"><textarea name="contents" id="" cols="30" rows="10"></textarea></td>
                <td><input type="submit" value="댓글달기"></td>
            </tr>
            <tr>
                <td><input type="text" name="author" value="<%=(String)session.getAttribute("name")%>"></td>
            </tr>
            <tr>
                <td><input type="password" name="pw" placeholder="비밀번호입력"></td>
                <input type="hidden" name="ref" value="<%=boardBean.getNo()%>">
            </tr>
        </table>
    </form>
<button onclick="href='#'">글 수정</button>
<button onclick="href='#'">글 삭제</button>
</body>
</html>
