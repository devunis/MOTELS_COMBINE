<%@ page import="java.util.List" %>
<%@ page import="model.booking.BookingBean" %>
<%@ page import="model.booking.BookingDAO" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: jy
  Date: 2019/11/18
  Time: 11:26 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="assets/style/bookingmain.css"/>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    List<BookingBean> beans = (ArrayList<BookingBean>)request.getAttribute("cart");
    if (beans == null){
%>
<div class="container">
    <h2>장바구니</h2>
    <p style="color: darkred">장바구니 목록이 없습니다.</p>
</div>
<%}else{%>
<div class="container">
    <div id="cart-wrapper">
        <h1>장바구니</h1>
        <%
            for (int i = 0 ; i < beans.size();i++){
        %>
        <div class="booking-card" data-aos="fade-left">
            <div class="booked-motel-image">
                <img src="<%=beans.get(i).getImg()%>" alt="">
            </div>
            <div class="booked-motel-contents">
                <h3 class="booked-motel-name"><%=beans.get(i).getName()%></h3>
                <ul>
                    <li class="booked-motel-info"><%=beans.get(i).getInfo()%></li>
                    <li class="booked-date"><span><%=beans.get(i).getCheckin()%></span> ~ <span><%=beans.get(i).getCheckout()%></span></li>
                    <li class="booked-price"><%=beans.get(i).getPrice()%></li>
                </ul>
                <div class="cart-btn-wrapper">
                    <button class="booked-date btn-primary" onclick="location.href='booking.do?img=<%=beans.get(i).getImg()%>&name=<%=beans.get(i).getName()%>&info=<%=beans.get(i).getInfo()%>&price=<%=beans.get(i).getPrice()%>&checkIn=<%=beans.get(i).getCheckin()%>&checkOut=<%=beans.get(i).getCheckout()%>&adults=<%=beans.get(i).getAdults()%>&kids=<%=beans.get(i).getKids()%>&rooms=<%=beans.get(i).getRooms()%>'">예약하기</button>
                    <button class="booked-date btn-primary" onclick="location.href='delete-cart?no=<%=i%>'">삭제</button>
                </div>
            </div>
        </div>
        <%}%>
        <div id="cart-other-motel-wrapper">
            <button id="cart-other-motel" class="btn-primary align-right" onclick="history.go(-1)">다른 모텔 보러가기</button>
        </div>
    </div>
</div>
<%}%>
</body>
</html>
