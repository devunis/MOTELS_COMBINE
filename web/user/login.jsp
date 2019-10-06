<%--
  Created by IntelliJ IDEA.
  User: eurob
  Date: 2019-09-29
  Time: 오후 5:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MOTELS COMBINE</title>
</head>
<body>
    <h1>로그인</h1>
    <form action="proc.do" method="post">
        <label for="email">이메일</label>
        <input type="email" id="email" name="email" placeholder="이메일" />
        <label for="pw">비밀번호</label>
        <input type="password" id="pw" name="pw" />
        <button type="submit">로그인</button>
    </form>
    <a href="index?main=/user/signup.jsp">회원가입</a>
</body>
</html>
