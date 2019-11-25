<%@ page import="java.util.List" %>
<%@ page import="controller.Booking.BookingBean" %>
<%@ page import="controller.Booking.BookingDAO" %><%--
  Created by IntelliJ IDEA.
  User: jy
  Date: 2019/11/18
  Time: 11:26 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../assets/style/bookingmain.css"/>
</head>
<body>
<%
    String email = (String)session.getAttribute("email");
    if (email==null){
        %>
<script>
    alert('로그인이 필요합니다!');
    history.go(-1);
</script>

<%
    }
    BookingDAO dao = new BookingDAO();
    List<BookingBean> bbeans = dao.getBooking(email);
    if (bbeans.isEmpty()){
%>
<div class="container">
    <h2>예약확인</h2>
    <p style="color: darkred">예약내역이 없습니다.</p>
</div>
<%
    }else{
%>
<div class="container">
<h1>예약확인</h1>
<%
        for (BookingBean bbean : bbeans){
%>
    <div class="booking-card" data-aos="fade-left">
        <div class="booked-motel-image">
            <img src="<%=bbean.getImg()%>" alt="" onclick="location.href='index.jsp?main=/booking/bookingdetail.jsp?no=<%=bbean.getNo()%>'">
        </div>
        <div class="booked-motel-contents">
            <h3 class="booked-motel-name"><%=bbean.getName()%></h3>
            <ul>
                <li class="booked-motel-info"><%=bbean.getInfo()%></li>
                <li class="booked-date"><span><%=bbean.getCheckin()%></span> ~ <span><%=bbean.getCheckout()%></span></span></li>
                <li class="booked-price"><%=bbean.getPrice()%></li>
            </ul>
        </div>
    </div>
        <%}%>
</div>
    <%}%>
</table>
</body>
</html>
