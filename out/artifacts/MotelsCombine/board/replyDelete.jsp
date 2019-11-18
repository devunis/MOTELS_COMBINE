<%--
  Created by IntelliJ IDEA.
  User: jy
  Date: 2019/11/10
  Time: 11:51 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/board-delete?type=2" method="post">
        비밀번호를 입력하세요
        <input type="hidden" name="replyNo" value="<%=request.getParameter("replyNo")%>">
        <input type="password" id="pwd" name="pwd">
        <input type="submit" value="삭제">
    </form>
</body>
</html>
