<%@ page import="controller.Booking.BookingDAO" %>
<%@ page import="controller.Booking.BookingBean" %><%--
  Created by IntelliJ IDEA.
  User: jy
  Date: 2019/11/18
  Time: 5:17 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    BookingDAO dao = new BookingDAO();
    int no = Integer.parseInt(request.getParameter("no"));
    BookingBean bean = dao.getBooking(no);
%>
<h1>상세정보</h1>
<table>
    <tr>
        <td>예약번호</td>
        <td>이미지</td>
        <td>모텔명</td>
        <td>정보</td>
        <td>가격</td>
        <td>체크인</td>
        <td>체크아웃</td>
        <td>성인</td>
        <td>아동</td>
        <td>방</td>
        <td>예약자 아이디</td>
        <td>예약날짜</td>
    </tr>
    <tr>
        <td><%=bean.getNo()%></td>
        <td><img src="<%=bean.getImg()%>" alt=""></td>
        <td><%=bean.getName()%></td>
        <td><%=bean.getInfo()%></td>
        <td><%=bean.getPrice()%></td>
        <td><%=bean.getCheckin()%></td>
        <td><%=bean.getCheckout()%></td>
        <td><%=bean.getAdults()%></td>
        <td><%=bean.getKids()%></td>
        <td><%=bean.getRooms()%></td>
        <td><%=bean.getId()%></td>
        <td><%=bean.getReserveDate()%></td>
    </tr>
    <button onclick="history.back()"></button>


</table>
</body>
</html>
