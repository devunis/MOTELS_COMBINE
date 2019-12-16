<%--
  Created by IntelliJ IDEA.
  User: jy
  Date: 29/09/2019
  Time: 4:31 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
  <head>
    <title>MOTELS COMBINE</title>
    <meta name="viewport" content="width=device-width, user-scalable=no">
    <meta charset="UTF-8">
    <style>
      /* 로딩 */
      #loading{
        position: fixed;
        background-color: #344955;
        top: 0; left: 0; right: 0; bottom: 0;

        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
      }

      #loading span{
        font-size: 1.5rem;
        color: white;
        margin-bottom: 30px;
      }

      #loading img{
        width: 100px;
        height: 100px;
        animation-duration: 3s;
        animation-iteration-count: infinite;
        animation-name: loading-roll;
        animation-delay: 0s;
      }

      @keyframes loading-roll {
        0%{
          transform: rotate(0deg);
        }
        50%{
          transform: rotate(360deg);
        }
        0%{
          transform: rotate(0deg);
        }
      }
    </style>
    <link rel="stylesheet" href="assets/aos/aos.css" />
    <link rel="stylesheet" href="assets/style/font.css" />
<%--    <link rel="stylesheet" href="assets/style/root.css" />--%>
  </head>
  <body>
    <header class="navbar">
      <%
        String main = request.getParameter("main");
        if(main == null) main = "main.jsp";
      %>
    <jsp:include page="header.jsp" />
    </header>
    <main>
      <jsp:include page="<%=main%>" />
    </main>
    <footer>
      <jsp:include page="footer.jsp" />
    </footer>
    <div id="loading">
      <span>로딩중입니다. 잠시만 기다려 주세요.</span>
      <img src="assets/image/main_icon_white.svg"/>
    </div>
    <script src="assets/jquery/jquery.min.js"></script>
    <script src="assets/aos/aos.js"></script>
    <script>
      $("#loading").fadeIn();
      AOS.init();
    </script>
    <script src="assets/scripts/base.js"></script>
  </body>
</html>
