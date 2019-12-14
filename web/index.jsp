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
    <script src="assets/jquery/jquery.min.js"></script>
    <script src="assets/aos/aos.js"></script>
    <script>
      AOS.init();
    </script>
    <script src="assets/scripts/base.js"></script>
  </body>
</html>
