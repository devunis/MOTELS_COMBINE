<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 11. 12.
  Time: 오전 5:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="controller.product.pInfo" %>
<html>
<body>
<table>

<%
    request.setCharacterEncoding("utf-8");
    ArrayList<pInfo> plist = (ArrayList<pInfo> ) request.getAttribute("mlist");
    for (int i=0; i<plist.size(); i++) {
        pInfo p = plist.get(i);
%>
 <tr>
     <td><img src="<%=p.getImg()%>" alt=""></td>
     <td><%=p.getName()%></td>
     <td><%=p.getPrice()%></td>
     <td><button>예약하기</button></td>
 </tr>
<% } %>
</table>
</body>
</html>
