<%--
  Created by IntelliJ IDEA.
  User: eurob
  Date: 2019-09-29
  Time: 오후 5:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" pageEncoding="UTF-8" language="java" %>

<html>
<head>
    <style>
        label, button {
            display: block;
        }
    </style>
</head>
<body>
    <h1>회원가입</h1>
    <form action="/proc.do" method="POST">
        <label for="email">이메일</label>
        <input type="email" id="email" name="email" placeholder="이메일" />

        <label for="pw">비밀번호</label>
        <input type="password" id="pw" name="pw" />

        <label for="pw2">비밀번호 중복확인</label>
        <input type="password" id="pw2" name="pw2" />

        <label for="name">닉네임</label>
        <input type="text" id="name" name="name" />

        <label for="tel">연락처</label>
        <input type="tel" id="tel" name="tel" />

        <label for="location">사는 지역</label>
        <select name="location" id="location">
            <option value="강남구">강남구</option>
            <option value="강동구">강동구</option>
            <option value="강북구">강북구</option>
            <option value="강서구">강서구</option>
            <option value="관악구">관악구</option>
            <option value="광진구">광진구</option>
            <option value="구로구">구로구</option>
            <option value="금천구">금천구</option>
            <option value="노원구">노원구</option>
            <option value="도봉구">도봉구</option>
            <option value="동대문구">동대문구</option>
            <option value="동작구">동작구</option>
            <option value="마포구">마포구</option>
            <option value="서대문구">서대문구</option>
            <option value="서초구">서초구</option>
            <option value="성동구">성동구</option>
            <option value="성북구">성북구</option>
            <option value="송파구">송파구</option>
            <option value="양천구">양천구</option>
            <option value="영등포구">영등포구</option>
            <option value="용산구">용산구</option>
            <option value="은평구">은평구</option>
            <option value="종로구">종로구</option>
            <option value="중구">중구</option>
            <option value="중랑구">중랑구</option>
        </select>
        <button type="submit">회원가입</button>
    </form>
</body>
</html>
