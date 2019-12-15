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
                <div id="board-read-contents-wrapper">
                    <span id="board-read-no">#<%=boardBean.getNo()%> 후기 입니다.</span>
                    <h3 id="board-read-title"><%=boardBean.getTitle()%></h3>
                    <div id="board-read-info-wrapper">
                        <span id="board-read-author"><%=boardBean.getAuthor()%> / </span>
                        <span id="board-read-date"><%=boardBean.getDate()%></span>
                    </div>
                    <p id="board-read-contents"><%=boardBean.getContents()%></p>
                </div>
                <div id="board-read-btn-wrapper">
                    <button class="btn-primary" onclick="location.href='index.jsp?main=/board/boardUpdate.jsp&boardNo=<%=boardBean.getNo()%>'">글 수정</button>
                    <button class="btn-primary" onclick="location.href='index.jsp?main=/board/boardDelete.jsp&boardNo=<%=boardBean.getNo()%>'">글 삭제</button>
                </div>
            </div>

            <div id="board-comment-wrapper">
                <h3>코멘트</h3>
                <div id="board-comment-form">
                    <form action="/register?type=2" method="post">
                        <div id="board-comment-idpw-wrapper">
                            <input type="text" class="input-bordered" name="author" value="<%=(String)session.getAttribute("name")%>">
                            <input type="password" class="input-bordered" name="pw" placeholder="비밀번호입력">
                        </div>
                        <textarea class="input-bordered" name="contents" id="" cols="30" rows="10"></textarea>
                        <button class="btn-primary">댓글달기</button>
                        <input type="hidden" name="ref" value="<%=boardBean.getNo()%>">
                    </form>
                </div>

                <div id="board-comment">
                    <%
                        ArrayList<BoardBean> reply = (ArrayList<BoardBean>) request.getAttribute("reply");
                        for (int i=0; i<reply.size() ;i++) {
                            BoardBean rep = reply.get(i);
                    %>
                    <div class="comment-item">
                        <div class="comment-item-contents-wrapper">
                            <span id="comment-author"><%=rep.getAuthor()%> / </span>
                            <span id="comment-date"><%=rep.getDate()%></span>
                        </div>
                        <p id="comment-contents"><%=rep.getContents()%></p>
                        <div id="comment-item-btn-wrapper" class="align-right">
                            <button class="btn-primary" onclick="location.href='index.jsp?main=/board/replyUpdate.jsp&replyNo=<%=rep.getNo()%>'">수정하기</button>
                            <button class="btn-primary" onclick="location.href='index.jsp?main=/board/replyDelete.jsp&replyNo=<%=rep.getNo()%>'">삭제하기</button>
                        </div>
                    </div>
                    <% } %>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
