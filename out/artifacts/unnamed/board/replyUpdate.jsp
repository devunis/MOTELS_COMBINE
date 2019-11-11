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
</head>
<body>
<form action="/board-update?type=2" method="post">
    <input type="hidden" name="replyNo" value="<%=request.getParameter("replyNo")%>">

    수정할 내용을 입력하세요
    <textarea name="content" id="content" cols="30" rows="10"></textarea>
    비밀번호를 입력하세요
    <input type="password" id="pwd" name="pwd">
    <input type="submit" value="수정">
</form>
</body>
</html>
