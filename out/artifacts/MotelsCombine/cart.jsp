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
    List<BookingBean> bbeans = (ArrayList<BookingBean>)request.getAttribute("cart");
    if (bbeans == null){
%>
<div class="container">
    <h2>장바구니</h2>
    <p style="color: darkred">장바구니 목록이 없습니다.</p>
</div>
<%}else{%>
<div class="container">
    <h1>장바구니</h1>
    <%
        for (int i = 0 ; i < bbeans.size();i++){
    %>

    <div class="booking-card" data-aos="fade-left">
        <div class="booked-motel-image">
            <img src="<%=bbeans.get(i).getImg()%>" alt="">
        </div>
        <div class="booked-motel-contents">
            <h3 class="booked-motel-name"><%=bbeans.get(i).getName()%></h3>
            <ul>
                <li class="booked-motel-info"><%=bbeans.get(i).getInfo()%></li>
                <li class="booked-date"><span><%=bbeans.get(i).getCheckin()%></span> ~ <span><%=bbeans.get(i).getCheckout()%></span></li>
                <li class="booked-price"><%=bbeans.get(i).getPrice()%></li>
                <li class="booked-date" onclick="location.href='booking.do?img=<%=bbeans.get(i).getImg()%>&name=<%=bbeans.get(i).getName()%>&info=<%=bbeans.get(i).getInfo()%>&price=<%=bbeans.get(i).getPrice()%>'"><span>예약하기</span>
                <li class="booked-date" onclick="location.href='delete-cart?no=<%=i%>'"><span>삭제</span>
            </ul>
        </div>
    </div>
    <%}%>
</div>
<%}%>
</body>
</html>
