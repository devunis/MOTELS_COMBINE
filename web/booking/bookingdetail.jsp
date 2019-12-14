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
    <link rel="stylesheet" href="../assets/style/bookingdetail.css"/>
</head>
<body>
<%
    BookingDAO dao = new BookingDAO();
    int no = Integer.parseInt(request.getParameter("no"));
    BookingBean bean = dao.getBooking(no);
%>

<div class="container">
    <h1>예약번호 #<%=no%>에 대한 내용입니다.</h1>

    <div id="booking-detail-wrapper">
        <div id="booking-detail-image-wrapper">
            <img src="<%=bean.getImg()%>" alt="">
        </div>
        <table>
            <tr>
                <th>모텔명</th>
                <td><%=bean.getName()%></td>
            </tr>
            <tr>
                <th>정보</th>
                <td><%=bean.getInfo()%></td>
            </tr>
            <tr>
                <th>가격</th>
                <td><%=bean.getPrice()%></td>
            </tr>
            <tr>
                <th>체크인</th>
                <td><%=bean.getCheckin()%></td>
            </tr>
            <tr>
                <th>체크아웃</th>
                <td><%=bean.getCheckout()%></td>
            </tr>
            <tr>
                <th>성인</th>
                <td><%=bean.getAdults()%></td>
            </tr>
            <tr>
                <th>아동</th>
                <td><%=bean.getKids()%></td>
            </tr>
            <tr>
                <th>방 수</th>
                <td><%=bean.getRooms()%></td>
            </tr>
            <tr>
                <th>예약자 아이디</th>
                <td><%=bean.getId()%></td>
            </tr>

            <tr>
                <th>예약날짜</th>
                <td><%=bean.getReserveDate()%></td>
            </tr>
        </table>
    </div>
    <div id="booking-detail-btn-wrapper">
        <div class="booking-detail-btn-card">
            <div class="booking-detail-btn-card-direction">
                <span>예약을 취소 하시려면?</span>
            </div>
            <button class="btn-primary align-right" onclick="location.href='index.jsp?main=/booking/bookingcancel.jsp?no=<%=no%>'">예약 취소</button>
        </div>
        <div class="booking-detail-btn-card">
            <div class="booking-detail-btn-card-direction">
                <span>해당 모텔로 전화하시려면?</span>
            </div>
            <button class="btn-primary align-right" onclick="location.href='#'">전화하기</button>
        </div>
        <div class="booking-detail-btn-card">
            <div class="booking-detail-btn-card-direction">
                <span>뒤로 가시려면?</span>
            </div>
            <button class="btn-primary align-right" onclick="history.back()">뒤로가기</button>
        </div>
    </div>
</div>
</body>
</html>
