<%--
  Created by IntelliJ IDEA.
  User: jy
  Date: 10/10/2019
  Time: 9:11 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = (String)session.getAttribute("name");
%>
<h1>회원수정</h1>
<form action="/member-update" method="post">
    <label for="lastpw">이전 비밀번호</label>
    <input type="password" id="lastpw" name="lastpw" />

    <label for="pw">새로운 비밀번호</label>
    <input type="password" id="pw" name="pw" />
    <label for="pw1">새로운 비밀번호 확인</label>
    <input type="password" id="pw1" name="pw1" />

    <label for="name">닉네임</label>
    <input type="text" id="name" name="name" value="<%=name%>"/>

    <label for="tel">연락처</label>
    <input type="tel" id="tel" name="tel" />

    <label for="location">사는 지역 </label>
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
    <input type="submit" value="수정아 보고싶어">
</form>
</body>
</html>
