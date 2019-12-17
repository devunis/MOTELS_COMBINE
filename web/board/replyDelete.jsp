<%--
  Created by IntelliJ IDEA.
  User: jy
  Date: 2019/11/10
  Time: 11:51 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../assets/style/board.css" />
</head>
<body>
    <div class="board-delete-wrapper">
        <form class="content-overlay-dark" action="/board-delete?type=2" method="post">
            <h2>댓글 삭제</h2>
            <p>비밀번호를 입력하세요</p>
            <input type="hidden" name="replyNo" value="<%=request.getParameter("replyNo")%>">
            <input type="hidden" name="no" value="<%=request.getParameter("no")%>">
            <input class="input-bordered" type="password" id="pwd" name="pwd">
            <button class="btn-primary align-right">삭제</button>
        </form>
    </div>
</body>
</html>
