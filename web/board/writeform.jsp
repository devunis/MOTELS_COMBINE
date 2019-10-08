<%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 10. 5.
  Time: 오후 7:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<body>
<%
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
<form action="/board-register" method="post">
    제목 : <input type="text" name="title"><br>
    글쓴이 : <input type="text" name="author" value="<%=name%>"><br>
    비번 : <input type="text" name="pw">
    내용 : <textarea name="contents" id="" cols="30" rows="10"></textarea>
    <input type="submit" value="글쓰기">
</form>
</body>
</html>
