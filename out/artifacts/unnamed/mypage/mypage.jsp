<%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 10. 7.
  Time: 오전 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<div align="center">
</div>
<%
    String email = (String) session.getAttribute("email");
    String name = (String) session.getAttribute("name");
    if (name == null) {
%>
<script>
    alert('로그인이 필요합니다!');
    history.go(-1);
</script>
<%
    }
%>

<h1>이메일 <%=email%>, 이름 <%=name%>, 사는곳, 전화번호</h1>
<button onclick="location.href='index.jsp?main=/mypage/updateinfo.jsp'">회원수정</button>
<button onclick="location.href='index.jsp?main=/mypage/deleteinfo.jsp'">회원탈퇴</button>

</body>
</html>
