<%--
  Created by IntelliJ IDEA.
  User: jy
  Date: 2019/11/18
  Time: 5:02 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/bookingCancel">
    비밀번호를 입력하세요
    <input type="hidden" name="no" value="<%=request.getParameter("no")%>">
    <input type="password" id="pwd" name="pwd">
    <input type="submit" value="삭제">
</form>
</body>
</html>
