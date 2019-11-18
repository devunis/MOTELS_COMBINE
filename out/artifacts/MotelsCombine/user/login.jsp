<%--
  Created by IntelliJ IDEA.
  User: eurob
  Date: 2019-09-29
  Time: 오후 5:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>MOTELS COMBINE</title>
    <link rel="stylesheet" href="/assets/style/login.css" />
</head>
<body>
    <section id="login">
        <div class="container content-overlay-dark col-m-wrapper" style="margin-top: 20px;">
            <article id="login-form-article">
                <h2 id="login-heading">로그인</h2>
                <hr class="devider-white"/>
                <form id="login-form" action="/login.do" method="post">
                    <div class="col-wrapper">
                        <div class="mt-1 row-wrapper">
                            <label for="email">이메일</label>
                            <input class="input-primary" type="email" id="email" name="email" placeholder="이메일" />
                        </div>
                        <div class="mt-1 row-wrapper">
                            <label for="pw">비밀번호</label>
                            <input class="input-primary" type="password" id="pw" name="pw" />
                        </div>
                    </div>
                    <input class="btn-primary mt-2 align-center" type="submit" value="로그인">

                </form>
            </article>
            <article id="signup-form-article">
                <h2 id="signup-heading">계정이 없으신가요?</h2>
                <button class="btn-primary mt-1" onclick="location.href='index.jsp?main=/user/signup.jsp'">회원가입</button>
            </article>
        </div>
    </section>

</body>
</html>
