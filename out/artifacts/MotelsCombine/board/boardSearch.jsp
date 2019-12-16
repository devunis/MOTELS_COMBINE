<%@ page import="model.board.BoardBean" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 10. 5.
  Time: 오후 7:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <link rel="stylesheet" href="/assets/style/board.css" />
</head>
<body>
<%
    ArrayList<BoardBean> list = (ArrayList<BoardBean>) request.getAttribute("list");
    int totalLength = list.size();
%>
<div class="container">
    <div class="jumbotron">
        <h2 id="board-heading">숙박 후기</h2>
        <p id="board-description">총<%=totalLength%>개의 후기를 보실 수 있습니다.</p>
        <div id="board-search-wrapper" class="align-right">
            <form id="board-search-form" action="board-search" method="post">
                <input class="input-bordered" type="text" id="search-text" name="keyword" placeholder="검색할 키워드" required>
                <button class="btn-primary">검색</button>
            </form>
            <button class="btn-primary" onclick="location.href='index.jsp?main=/board/boardmain.jsp'">전체글 조회</button>
        </div>
    </div>
    <div id="board-wrapper">
        <% for (BoardBean boardBean : list) {%>
        <div id="board-card">
            <div id="board-head-meta">
                <span id="board-no">#<%=boardBean.getNo()%></span>
                <span id="board-readcnt"><%=boardBean.getReadcnt()%>명이 이 글을 보았습니다.</span>
            </div>
            <div id="board-title">
                <a href="/read?no=<%=boardBean.getNo()%>">
                    <h3><%=boardBean.getTitle()%></h3>
                </a>
            </div>
            <div id="board-meta">
                <div id="board-author"><%=boardBean.getAuthor()%></div>
                <div id="board-date"><%=boardBean.getDate()%></div>
            </div>
        </div>
        <%}%>
    </div>

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
    <button id="board-write" onclick="location.href='index.jsp?main=/board/writeform.jsp'">
        <span>후기 작성</span>
        <img src="/assets/image/write.svg" alt="글 작성하기"/>
    </button>
</div>
</body>
</html>
