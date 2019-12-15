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
<head>
    <link rel="stylesheet" href="/assets/style/board.css" />
</head>
<body>
    <div class="container">
        <div id="board-read-wrapper">
            <div id="board-read">
                <span id="board-read-no"><%=boardBean.getNo()%></span>
                <h3 id="board-read-title"><%=boardBean.getTitle()%></h3>
                <span id="board-read-author"><%=boardBean.getAuthor()%></span>
                <span id="board-read-date"><%=boardBean.getDate()%></span>
                <p id="board-read-contents"><%=boardBean.getContents()%></p>
                <button onclick="location.href='index.jsp?main=/board/boardUpdate.jsp&boardNo=<%=boardBean.getNo()%>'">글 수정</button>
                <button onclick="location.href='index.jsp?main=/board/boardDelete.jsp&boardNo=<%=boardBean.getNo()%>'">글 삭제</button>
            </div>
            <div id="board-comment-wrapper">
                <div id="board-comment-form">
                    <form  action="/register?type=2" method="post">
                        <div id="board-comment-idpw-wrapper">
                            <input class="input-bordered" type="text" name="author" value="<%=(String)session.getAttribute("name")%>">
                            <input class="input-bordered" type="password" name="pw" placeholder="비밀번호입력" />
                            <input  type="hidden" name="ref" value="<%=boardBean.getNo()%>" />
                        </div>
                        <textarea class="input-bordered" name="contents" id="" cols="30" rows="10"></textarea>
                        <button>댓글달기</button>
                    </form>
                </div>

                <div id="board-comment">
                    <%
                        ArrayList<BoardBean> reply = (ArrayList<BoardBean>) request.getAttribute("reply");
                        for (int i=0; i<reply.size() ;i++) {
                            BoardBean rep = reply.get(i);
                    %>
                    <div class="comment-item">
                        <span id="comment-author"><%=rep.getAuthor()%></span>
                        <span id="comment-date"><%=rep.getDate()%></span>
                        <p id="comment-contents"><%=rep.getContents()%></p>
                        <button onclick="location.href='index.jsp?main=/board/replyUpdate.jsp&replyNo=<%=rep.getNo()%>'">수정하기</button>
                        <button onclick="location.href='index.jsp?main=/board/replyDelete.jsp&replyNo=<%=rep.getNo()%>'">삭제하기</button>
                    </div>
                    <% } %>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
