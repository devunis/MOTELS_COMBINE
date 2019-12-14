<%@ page import="model.booking.BookingDAO" %>
<%@ page import="model.booking.BookingBean" %>
<%--
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
        <td><%=no%></td>
    </tr>
    <tr>
        <td>이미지</td>
        <td><img src="<%=bean.getImg()%>" alt=""></td>
    </tr>
    <tr>
        <td>모텔명</td>
        <td><%=bean.getName()%></td>
    </tr>
    <tr>
        <td>정보</td>
        <td><%=bean.getInfo()%></td>
    </tr>
    <tr>
        <td>가격</td>
        <td><%=bean.getPrice()%></td>
    </tr>
    <tr>
        <td>체크인</td>
        <td><%=bean.getCheckin()%></td>
    </tr>
    <tr>
        <td>체크아웃</td>
        <td><%=bean.getCheckout()%></td>
    </tr>
    <tr>
        <td>성인</td>
        <td><%=bean.getAdults()%></td>
    </tr>
    <tr>
        <td>아동</td>
        <td><%=bean.getKids()%></td>
    </tr>
    <tr>
        <td>방</td>
        <td><%=bean.getRooms()%></td>
    </tr>
    <tr>
        <td>예약자 아이디</td>
        <td><%=bean.getId()%></td>
    </tr>

    <tr>
        <td>예약날짜</td>
        <td><%=bean.getReserveDate()%></td>
    </tr>
</table>
<jsp:include page="../googleMap.jsp" />
<button onclick="location.href='index.jsp?main=/booking/bookingcancel.jsp?no=<%=no%>'">예약 취소</button>
<button onclick="location.href='#'">전화하기</button>
<button onclick="history.back()">뒤로가기</button>
</body>
</html>
