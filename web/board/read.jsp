<%@ page import="model.board.BoardBean" %><%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 11. 8.
  Time: 오후 4:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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


    <form action="">
        <table border="1">






            <tr>
                <td rowspan="3"><textarea name="" id="" cols="30" rows="10"></textarea></td>
                <td><input type="submit" value="댓글달기"></td>
            </tr>
            <tr>
                <td><input type="text" name="pw" value="<%=(String)session.getAttribute("name")%>"></td>
            </tr>
            <tr>
                <td><input type="password" name="pw" placeholder="비밀번호입력"></td>
                <input type="hidden" name="no" value="<%=boardBean.getNo()%>">
            </tr>
        </table>
    </form>
<button>글 수정</button>
<button>글 삭제</button>
</body>
</html>
