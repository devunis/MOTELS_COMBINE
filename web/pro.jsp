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
<head>
    <meta charset="UTF-8s">
</head>
<body>
<table>
    <h1>모텔 검색</h1>
    <tr>
        <td>이미지</td>
        <td>모텔명</td>
        <td>정보</td>
        <td>가격</td>
        <td></td>
    </tr>
<%
    request.setCharacterEncoding("UTF-8");
    ArrayList<pInfo> plist = (ArrayList<pInfo> ) request.getAttribute("mlist");
    for (int i=0; i<plist.size(); i++) {
        pInfo p = plist.get(i);
%>

 <tr>
     <td><img src="<%=p.getImg()%>" alt=""></td>
     <td><%=p.getName()%></td>
     <td><%=p.getInfo()%></td>
     <td><%=p.getPrice()%></td>

     <form action="booking.do" method="post">
         <input type="hidden" name="checkIn" value="<%=request.getAttribute("checkIn")%>">
         <input type="hidden" name="checkOut" value="<%=request.getAttribute("checkOut")%>">
         <input type="hidden" name="adults" value="<%=request.getAttribute("adults")%>">
         <input type="hidden" name="kids" value="<%=request.getAttribute("kids")%>">
         <input type="hidden" name="rooms" value="<%=request.getAttribute("rooms")%>">
         <input type="hidden" name="img" value="<%=p.getImg()%>">
         <input type="hidden" name="name" value="<%=p.getName()%>">
         <input type="hidden" name="info" value="<%=p.getInfo()%>">
         <input type="hidden" name="price" value="<%=p.getPrice()%>">
         <td><button type="submit">예약하기</button></td>
     </form>

 </tr>
    <%}%>
</table>

<jsp:include page="pcon.jsp" />
</body>
</html>
