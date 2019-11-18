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
<form action="/board-delete?type=1" method="post">
    비밀번호를 입력하세요
    <input type="hidden" name="boardNo" value="<%=request.getParameter("boardNo")%>">
    <input type="password" id="pwd" name="pwd">
    <input type="submit" value="삭제">
</form>
</body>
</html>
