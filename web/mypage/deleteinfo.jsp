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
<div id="delete-info-wrapper">
    <form class="content-overlay-dark" action="/member-delete" method="post">
        <h2>회원탈퇴</h2>
        <label for="pw">비밀번호 입력</label>
        <input class="input-bordered" type="password" id="pw" name="pw" />
        <button class="btn-primary align-right">탈퇴</button>
    </form>
</div>

</body>
</html>
