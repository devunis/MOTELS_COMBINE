<%--
  Created by IntelliJ IDEA.
  User: jy
  Date: 29/09/2019
  Time: 4:31 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>MOTELS COMBINE</title>
    <meta name="viewport" content="width=device-width, user-scalable=no">
    <link rel="stylesheet" href="assets/style/root.css?ver=1.0" />
  </head>
  <body>
    <header>
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
  </body>
</html>