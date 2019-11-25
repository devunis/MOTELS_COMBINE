<%@ page import="model.member.MemberDAO" %>
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
    <link rel="stylesheet" href="../assets/style/updateinfo.css" />
</head>
<body>
<%
    String name = (String)session.getAttribute("name");
%>
<div class="container">
    <h2>회원수정</h2>
    <div id="update-form-wrapper">
        <form id="update-form" action="/member-update" method="post">
            <div class="form-item-wrapper">
                <label for="lastpw">이전 비밀번호</label>
                <input type="password" id="lastpw" class="input-bordered" name="lastpw" />
            </div>
            <div class="form-item-wrapper">
                <label for="pw">새로운 비밀번호</label>
                <input type="password" id="pw" class="input-bordered" name="pw" />
            </div>
            <div class="form-item-wrapper">
                <label for="pw1">새로운 비밀번호 확인</label>
                <input type="password" id="pw1" class="input-bordered" name="pw1" />
            </div>
            <div class="form-item-wrapper">
                <hr class="devider-gray"/>
            </div>
            <div class="form-item-wrapper">
                <label for="name">닉네임</label>
                <input type="text" id="name" name="name" class="input-bordered" value="<%=name%>"/>
            </div>
            <div class="form-item-wrapper">
                <label for="tel">연락처</label>
                <input type="tel" id="tel" class="input-bordered" name="tel" />
            </div>
            <div class="form-item-wrapper">
                <label for="location">사는 지역 </label>
                <select name="location" id="location" class="input-bordered">
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
            </div>

            <div class="update-btn-wrapper">
                <button type="submit" class="btn-primary">회원정보 수정</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>
