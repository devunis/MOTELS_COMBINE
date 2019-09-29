<%--
  Created by IntelliJ IDEA.
  User: eurob
  Date: 2019-09-29
  Time: 오후 5:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MOTELS COMBILE</title>
    <style>
        label, button {
            display: block;
        }
    </style>
</head>
<body>
    <h1>회원가입</h1>
    <form action="">
        <label for="email">이메일</label>
        <input type="email" id="email" name="email" placeholder="이메일" />

        <label for="pw">비밀번호</label>
        <input type="password" id="pw" name="pw" />

        <label for="pw2">비밀번호 중복확인</label>
        <input type="password" id="pw2" name="pw2" />

        <label for="name">닉네임</label>
        <input type="password" id="name" name="name" />

        <label for="tel">연락처</label>
        <input type="tel" id="tel" name="tel" />

        <label for="location">사는 지역</label>
        <select name="location" id="location">
            <option value="1">강남구</option>
            <option value="2">강동구</option>
            <option value="3">강북구</option>
            <option value="4">강서구</option>
            <option value="5">관악구</option>
            <option value="6">광진구</option>
            <option value="7">구로구</option>
            <option value="8">금천구</option>
            <option value="9">노원구</option>
            <option value="10">도봉구</option>
            <option value="11">동대문구</option>
            <option value="12">동작구</option>
            <option value="13">마포구</option>
            <option value="14">서대문구</option>
            <option value="15">서초구</option>
            <option value="16">성동구</option>
            <option value="17">성북구</option>
            <option value="18">송파구</option>
            <option value="19">양천구</option>
            <option value="20">영등포구</option>
            <option value="21">용산구</option>
            <option value="22">은평구</option>
            <option value="23">종로구</option>
            <option value="24">중구</option>
            <option value="25">중랑구</option>
        </select>
        <button type="submit">회원가입</button>
    </form>
</body>
</html>
