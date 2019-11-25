<%@ page import="model.member.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 10. 7.
  Time: 오전 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <link rel="stylesheet" href="../assets/style/mypage.css"/>
</head>
<body>
<%
    String email = (String) session.getAttribute("email");
    String name = (String) session.getAttribute("name");
    MemberDAO mdao = new MemberDAO();
    String location = mdao.getMemberLoc(email);
    String tel = mdao.getMemberTel(email);
    if (name == null) {
%>
<script>
    alert('로그인이 필요합니다!');
    history.go(-1);
</script>
<%
    }
%>
<div class="container">
    <h2>마이페이지</h2>

    <div class="mypage-card-wrapper">
        <div class="mypage-info-list">
            <h3>이메일</h3>
            <p><%=email%></p>
        </div>
        <div class="mypage-info-list">
            <h3>이름</h3>
            <p><%=name%></p>
        </div>
        <div class="mypage-info-list">
            <h3>사는곳</h3>
            <p><%=location%></p>
        </div>
        <div class="mypage-info-list">
            <h3>전화번호</h3>
            <p><%=tel%></p>
        </div>
    </div>

    <div class="mypage-submenu-card">
        <p>회원 정보를 수정하시려면?</p>
        <div class="mypage-submenu-btn-wrapper">
            <button class="btn-primary" onclick="location.href='index.jsp?main=/mypage/updateinfo.jsp'">회원수정</button>
        </div>
    </div>

    <div class="mypage-submenu-card">
        <p>예약하신 내용을 확인하시려면?</p>
        <div class="mypage-submenu-btn-wrapper">
            <button class="btn-primary" onclick="location.href='/booking'">예약 확인</button>
        </div>
    </div>

    <div class="mypage-submenu-card">
        <p>탈퇴하고 싶다면?</p>
        <div class="mypage-submenu-btn-wrapper">
            <button class="btn-primary" onclick="location.href='index.jsp?main=/mypage/deleteinfo.jsp'">회원탈퇴</button>
        </div>
    </div>

</div>

</body>
</html>
