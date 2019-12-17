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
<div class="container">
    <div class="update-form-wrapper">
        <h2>댓글 수정</h2>
        <form action="/board-update?type=2" method="post">
            <div class="update-form-contents">
                <input type="hidden" name="replyNo" value="<%=request.getParameter("replyNo")%>">
                <label for="content">수정할 내용을 입력하세요</label>
                <textarea class="input-bordered" name="content" id="content"></textarea>
            </div>
            <div class="update-form-password">
                <label for="pwd">비밀번호를 입력하세요</label>
                <input class="input-bordered" type="password" id="pwd" name="pwd">
                <input type="hidden" name="no" value="<%=request.getParameter("no")%>">
            </div>
            <button type="submit" class="btn-primary align-right">수정</button>
        </form>
    </div>
</div>

</body>
</html>
