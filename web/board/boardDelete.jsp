<%--
  Created by IntelliJ IDEA.
  User: jy
  Date: 2019/11/10
  Time: 11:52 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../assets/style/board.css" />
</head>
<body>
<div class="board-delete-wrapper">
    <form class="content-overlay-dark" action="/board-delete?type=1" method="post">
        <h2>후기 삭제</h2>
        <p>비밀번호를 입력하세요</p>
        <input type="hidden" name="boardNo" value="<%=request.getParameter("boardNo")%>">
        <input class="input-bordered" type="password" id="pwd" name="pwd">
        <button class="btn-primary align-right">삭제</button>
    </form>
</div>

</body>
</html>
