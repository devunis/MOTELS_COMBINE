<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 11. 18.
  Time: 오후 6:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<p>
    <%
        ArrayList<String> urlList = (ArrayList<String>) request.getAttribute("urlList");
        for( int i=0; i<urlList.size(); i++) {%>
    <a href="/psearch?num=<%=i%>"><%= i+1 %></a>
    <% } %>
</p>
</body>
</html>
