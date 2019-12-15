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
    <link rel="stylesheet" href="../assets/style/booking.css"/>
</head>
<body>
<div id="booking-cancel-wrapper">
    <form class="content-overlay-dark" action="/bookingCancel">
        <h2>예약 취소</h2>
        <p>비밀번호를 입력하세요</p>
        <input type="hidden" name="no" value="<%=request.getParameter("no")%>">
        <input class="input-bordered" type="password" id="pwd" name="pwd">
        <button class="btn-primary align-right">삭제</button>
    </form>
</div>
</body>
</html>
