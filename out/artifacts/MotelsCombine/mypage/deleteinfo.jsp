g<%--
  Created by IntelliJ IDEA.
  User: jy
  Date: 10/10/2019
  Time: 9:11 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>회원탈퇴</h1>
<form action="/member-delete" method="post">
    <label for="pw">비밀번호 입력</label>
    <input type="password" id="pw" name="pw">
    <input type="submit" value="탈퇴">
</form>
</body>
</html>
