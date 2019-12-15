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
    <link rel="stylesheet" href="../assets/style/bookingmain.css"/>
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
    <h1>장바구니</h1>
    <button onclick="history.go(-1)">다른 모텔 보러가기</button>
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
                <li class="booked-date" onclick="location.href='booking.do?img=<%=beans.get(i).getImg()%>&name=<%=beans.get(i).getName()%>&info=<%=beans.get(i).getInfo()%>&price=<%=beans.get(i).getPrice()%>&checkIn=<%=beans.get(i).getCheckin()%>&checkOut=<%=beans.get(i).getCheckout()%>&adults=<%=beans.get(i).getAdults()%>&kids=<%=beans.get(i).getKids()%>&rooms=<%=beans.get(i).getRooms()%>'"><span>예약하기</span>
                <li class="booked-date" onclick="location.href='delete-cart?no=<%=i%>'"><span>삭제</span>
            </ul>
        </div>
    </div>
    <%}%>
</div>
<%}%>
</body>
</html>
