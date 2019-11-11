<%--
  Created by IntelliJ IDEA.
  User: eurob
  Date: 2019-09-29
  Time: 오후 5:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MOTELS COMBINE</title>
    <link rel="stylesheet" href="/assets/style/login.css" />
</head>
<body>
    <section id="login">
        <div class="container content-overlay-dark" style="margin-top: 20px;">
            <h1 id="login-heading">로그인</h1>
            <hr class="devider-white"/>
            <form id="login-form" action="/login.do" method="post">
                <div class="login-input-wrapper">
                    <label for="email">이메일</label>
                    <input type="email" id="email" name="email" placeholder="이메일" />
                    <label for="pw">비밀번호</label>
                    <input type="password" id="pw" name="pw" />
                </div>
                <input type="submit" value="로그인">
                <button onclick="location.href='index.jsp?main=/user/signup.jsp'">회원가입</button>
            </form>
        </div>
    </section>

</body>
</html>
