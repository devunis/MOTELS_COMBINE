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
    <table board="1">
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
            <td>
                <%=boardBean.getContents()%>
            </td>
        </tr>
    </table>
<button>글 수정</button>
<button>글 삭제</button>
</body>
</html>
