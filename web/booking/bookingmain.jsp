<%@ page import="java.util.List" %>
<%@ page import="controller.Booking.BookingBean" %><%--
  Created by IntelliJ IDEA.
  User: jy
  Date: 2019/11/18
  Time: 11:26 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<BookingBean> bbeans = (List<BookingBean>)request.getAttribute("bbean");
%>
<h1>예약확인</h1>
<tr>
    <td>모텔명</td>
    <td>위치</td>
    <td>체크인</td>
    <td>체크아웃</td>
    <td>가격</td>
</tr>
<%
    for (BookingBean bbean : bbeans){
%>
<tr><%=bbean.getMotel()%></tr>
<tr><%=bbean.getLoc()%></tr>
<tr><%=bbean.getCheckin()%></tr>
<tr><%=bbean.getCheckout()%></tr>
<tr><%=bbean.getPrice()%></tr>
<%
    }
%>
</body>
</html>
