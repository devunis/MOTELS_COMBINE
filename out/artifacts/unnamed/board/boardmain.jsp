<%@ page import="model.board.BoardBean" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 10. 5.
  Time: 오후 7:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
    List<BoardBean> list = (List<BoardBean>) request.getAttribute("list");
%>
<h1>게시판</h1>
<h2>글목록 있을 예정</h2>
<table>
    <tr>
        <td>No</td>
        <td>제목</td>
        <td>작성일</td>
        <td>날짜</td>
        <td>조회수</td>
    </tr>

    <% for (BoardBean boardBean : list) {%>
    <tr>
        <td><%=boardBean.getNo()%>
        </td>
        <td><a href="/read?no=<%=boardBean.getNo()%>"><%=boardBean.getTitle()%>
        </a></td>
        <td><%=boardBean.getDate()%>
        </td>
        <td><%=boardBean.getAuthor()%></td>
        <td><%=boardBean.getReadcnt()%>
        </td>
    </tr>
    <%}%>
</table>


<%
    /*
    int count = Integer.parseInt(request.getParameter("count"));
    int pageSize = Integer.parseInt(request.getParameter("pageSize"));
    int currentPage = Integer.parseInt(request.getParameter("currentPage"));

    if (count > 0) {
        int pageCount = count / pageSize + (count%pageSize == 0 ? 0: 1);

        int startPage = 1;
        if(currentPage %10 !=0 ){
            startPage=((int)(currentPage/10)*10+1);
        } else {
            startPage = ((int)(currentPage/10)-1) *10 + 1;
        }

        int pageBlock = 10;
        int endPage = startPage + pageBlock -1;

        if(endPage > pageCount) endPage = pageCount;

        if(startPage > 10){

     */
%>
<!--<a href="../index.jsp/main=boardmain,jsp?pageNum=
>[이전]</a> -->
<%
    /*
        }
        for(int i=startPage; i<endPage; i++){

        }
    }
    */

%>
<button onclick="location.href='index.jsp?main=/board/writeform.jsp'">게시글작성</button>
</body>
</html>
