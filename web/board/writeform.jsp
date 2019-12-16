<%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 10. 5.
  Time: 오후 7:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
 <link rel="stylesheet" href="../assets/style/writeform.css" />
</head>
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
<div class="container">
    <form id="write-form-wrapper" action="register?type=1" method="post">
        <h2>후기 작성</h2>
        <div id="write-title-wrapper">
            <label for="title">제목</label>
            <input class="input-bordered" type="text" id="title" name="title"><br>
        </div>
        <div id="write-author-pw-wrapper">
            <label for="author">닉네임</label>
            <input class="input-bordered" type="text" id="author" name="author" value="<%=name%>" />
            <label for="pw">비밀번호</label>
            <input class="input-bordered" type="password" id="pw" name="pw" />
        </div>
        <div id="write-contents-wrapper">
            <textarea class="input-bordered" name="contents" id="contents" placeholder="후기를 입력해 주세요."></textarea>
        </div>
        <button id="write-btn" class="btn-primary align-right">글쓰기</button>
    </form>
</div>

</body>
</html>
