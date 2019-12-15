<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 11. 18.
  Time: 오후 6:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="assets/style/pcon.css" />
</head>
<body>
<div id="pcon-wrapper">
    <%
        ArrayList<String> urlList = (ArrayList<String>) request.getAttribute("urlList");
        for( int i=0; i<urlList.size(); i++) {
    %>
    <a class="pcon-item" href="psearch?pageNum=<%=i%>&start=<%=request.getParameter("start")%>&end=<%=request.getParameter("end")%>&adults=<%=request.getParameter("adults")%>&kids=<%=request.getParameter("kids")%>&rooms=<%=request.getParameter("rooms")%>"><%=i+1%></a>
    <% } %>
</div>
</body>
</html>
