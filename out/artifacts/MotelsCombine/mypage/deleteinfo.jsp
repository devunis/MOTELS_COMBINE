<%--
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
    <link rel="stylesheet" href="../assets/style/deleteinfo.css"/>
</head>
<body>
<div id="member-delete-wrapper">
    <form class="content-overlay-dark" id="member-delete-card" action="/member-delete" method="post">
        <h2>회원탈퇴</h2>
        <p>
            비밀번호를 입력하세요
        </p>
        <div id="member-delete-form-wrapper">
            <input class="input-bordered" type="password" id="pw" name="pw">
            <input class="btn-primary" type="submit" value="탈퇴">
        </div>
    </form>
</div>

</body>
</html>
