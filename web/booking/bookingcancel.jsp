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
    <link rel="stylesheet" href="../assets/style/bookingcancel.css"/>
</head>
<body>
<div id="cancel-wrapper">
    <form class="content-overlay-dark" id="cancel-card" action="/bookingCancel">
        <h2>예약 취소</h2>
        <p>
            비밀번호를 입력하세요
        </p>
        <div id="cancel-form-wrapper">
            <input type="hidden" name="no" value="<%=request.getParameter("no")%>">
            <input class="input-bordered" type="password" id="pwd" name="pwd">
            <input class="btn-primary" type="submit" value="확인">
        </div>
    </form>
</div>


</body>
</html>
