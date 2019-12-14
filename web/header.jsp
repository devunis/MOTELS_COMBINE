<%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 10. 5.
  Time: 오후 5:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <link rel="stylesheet" href="assets/style/header.css" />
</head>
<body>
<!-- Session (진백 DONT TOUCH PLZ)-->
<%
    String email = (String) session.getAttribute("email");
    String name = (String) session.getAttribute("name");
%>
<nav class="container">
    <a href="index.jsp?main=main.jsp">
        <img class="logo" src="assets/image/main_icon_white.svg" />
    </a>

    <ul id="menu-list">
        <% if (email != null ) {%>
        <li class="greeting"><%=name%>님 안녕하세요!</li>
        <li><a href="logout.do">로그아웃</a></li> <!--구현해야됨-->
        <%} else{%>
        <li><a href="index.jsp?main=/user/login.jsp">로그인</a></li>
        <%}%>
        <li><a href="index.jsp?main=main.jsp">HOME</a></li>
        <li><a href="board">후기검색</a></li>
        <li><a href="booking">예약확인</a></li>
        <li><a href="index.jsp?main=/mypage/mypage.jsp">마이페이지</a></li>
    </ul>

    <button id="mobile-menu-bar">
        <img src="/assets/image/menu.svg"/>
    </button>

    <%
        response.sendRedirect("index.jsp");
    %>
</nav>

<div id="mobile-menu-list">
    <ul>
        <% if (email != null ) {%>
        <li class="mobile-greeting">
            <span id="mobile-menu-nick"><%=name%></span>
        </li>
        <li><a href="logout.do">로그아웃</a></li> <!--구현해야됨-->
        <%} else{%>
        <li><a href="index.jsp?main=/user/login.jsp">로그인</a></li>
        <%}%>
        <li><a href="index.jsp?main=main.jsp">HOME</a></li>
        <li><a href="board">후기검색</a></li>
        <li><a href="booking">예약확인</a></li>
        <li><a href="index.jsp?main=/mypage/mypage.jsp">마이페이지</a></li>
    </ul>
</div>

<div id="mobile-menu-back">
    <%--EMPTY--%>
</div>
</body>
</html>