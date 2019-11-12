<%--
  Created by IntelliJ IDEA.
  User: eurob
  Date: 2019-09-29
  Time: 오후 5:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>MOTELS COMBINE</title>
</head>
<body>
    <h1>로그인</h1>
    <form action="/login.do" method="post">
        <label for="email">이메일</label>
        <input type="email" id="email" name="email" placeholder="이메일" />
        <label for="pw">비밀번호</label>
        <input type="password" id="pw" name="pw" />
        <input type="submit" value="로그인">
    </form>
    <button onclick="location.href='index.jsp?main=/user/signup.jsp'">회원가입</button>
</body>
</html>
