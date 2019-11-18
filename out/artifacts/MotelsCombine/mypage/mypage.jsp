<%@ page import="model.member.MemberDAO" %><%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 10. 7.
  Time: 오전 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<body>
<div align="center">
</div>
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
<h1>마이페이지</h1>
<table>
    <tr>
        <td>이메일</td>
        <td><%=email%></td>
    </tr>
    <tr>
        <td>이름</td>
        <td><%=name%></td>
    </tr>
    <tr>
        <td>사는곳</td>
        <td><%=location%></td>
    </tr>
    <tr>
        <td>전화번호</td>
        <td><%=tel%></td>
    </tr>
</table>
<button onclick="location.href='index.jsp?main=/mypage/updateinfo.jsp'">회원수정</button>
<button onclick="location.href='index.jsp?main=/mypage/deleteinfo.jsp'">회원탈퇴</button>

</body>
</html>
