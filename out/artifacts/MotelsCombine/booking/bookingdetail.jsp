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
    <link rel="stylesheet" href="../assets/style/booking.css" />
</head>
<body>
<%
    BookingDAO dao = new BookingDAO();
    int no = Integer.parseInt(request.getParameter("no"));
    BookingBean bean = dao.getBooking(no);
%>
<div class="container">
    <h2>상세정보</h2>
    <div id="booking-detail-wrapper">
        <div id="booking-detail-img-map-wrapper">
            <img src="<%=bean.getImg()%>" alt="<%=bean.getName()%>">
<%--            <jsp:include page="../googleMap.jsp" />--%>
        </div>
        <div id="booking-detail-contents-wrapper">
            <table>
                <tr>
                    <th>예약번호</th>
                    <td>: <%=no%></td>
                </tr>
                <tr>
                    <th>모텔명</th>
                    <td>: <%=bean.getName()%></td>
                </tr>
                <tr>
                    <th>정보</th>
                    <td>: <%=bean.getInfo()%></td>
                </tr>
                <tr>
                    <th>가격</th>
                    <td>: <%=bean.getPrice()%></td>
                </tr>
                <tr>
                    <th>체크인</th>
                    <td>: <%=bean.getCheckin()%></td>
                </tr>
                <tr>
                    <th>체크아웃</th>
                    <td>: <%=bean.getCheckout()%></td>
                </tr>
                <tr>
                    <th>성인</th>
                    <td>: <%=bean.getAdults()%></td>
                </tr>
                <tr>
                    <th>아동</th>
                    <td>: <%=bean.getKids()%></td>
                </tr>
                <tr>
                    <th>방</th>
                    <td>: <%=bean.getRooms()%></td>
                </tr>
                <tr>
                    <th>예약자 아이디</th>
                    <td>: <%=bean.getId()%></td>
                </tr>
                <tr>
                    <th>예약날짜</th>
                    <td>: <%=bean.getReserveDate()%></td>
                </tr>
            </table>
            <div id="booking-detail-btn-wrapper">
                <button class="btn-primary" onclick="location.href='index.jsp?main=/booking/bookingcancel.jsp?no=<%=no%>'">예약 취소</button>
                <button class="btn-primary" onclick="history.back()">뒤로가기</button>
            </div>
        </div>

    </div>
</div>

</body>
</html>
