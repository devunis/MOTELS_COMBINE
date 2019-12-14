<%@ page import="model.booking.BookingBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.booking.BookingDAO" %>
<%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 11. 18.
  Time: 오전 1:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="assets/style/reserve.css" />
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    BookingBean bean = (BookingBean)request.getAttribute("bean");
%>
<div class="container">
    <h2>예약확인</h2>
    <div class="motel-check">
        <div class="motel-check-image">
            <img src="<%=bean.getImg()%>" alt="<%=bean.getName()%>">
        </div>
        <div class="motel-check-contents">
            <h3 id="motel-check-name"><%=bean.getName()%></h3>
            <p id="motel-check-info"><%=bean.getInfo()%></p>
            <p id="motel-check-chkdate"><%=bean.getCheckin()%> ~ <%=bean.getCheckout()%></p>
            <p id="motel-check-price"><%=bean.getPrice()%></p>
            <div id="booking-form">

                <div class="booking-input-wrapper">
                    <label for="booking-name">에약자 성명</label>
                    <input class="input-bordered" type="text" id="booking-name" placeholder="예약자 이름을 입력해주세요.">
                </div>

                <div class="booking-input-wrapper">
                    <label for="booking-phone">연락처</label>
                    <input class="input-bordered" type="text" id="booking-phone" placeholder="전화번호를 입력해주세요.">
                </div>

                <div class="booking-input-wrapper">
                    <label for="pay">지불 수단</label>
                    <select class="input-bordered" name="pay" id="pay">
                        <option value="cash">현장결제</option>
                        <option value="card">카드</option>
                        <option value="kakaopay">카카오페이</option>
                    </select>
                </div>

                <div class="booking-input-wrapper">
                    <label for="pickup">픽업 여부</label>
                    <select class="input-bordered" name="pickup" id="pickup">
                        <option value="OK">필요합니다.</option>
                        <option value="NO">괜찮습니다.</option>
                    </select>
                </div>
            </div>
        </div>
    </div>

    <form id="reservation-final-form" action="/bookingin" >
        <input type="hidden" name="img" value="<%=bean.getImg()%>">
        <input type="hidden" name="name" value="<%=bean.getName()%>">
        <input type="hidden" name="info" value="<%=bean.getInfo()%>">
        <input type="hidden" name="price" value="<%=bean.getPrice()%>">
        <input type="hidden" name="checkIn" value="<%=bean.getCheckin()%>">
        <input type="hidden" name="checkOut" value="<%=bean.getCheckout()%>">
        <input type="hidden" name="adults" value="<%=bean.getAdults()%>">
        <input type="hidden" name="kids" value="<%=bean.getKids()%>">
        <input type="hidden" name="rooms" value="<%=bean.getRooms()%>">
        <input type="checkbox" class="check-primary" name="chk_info" id="chk_info" ><label id="chk_info_label" for="chk_info">위의 사항을 모두 확인하였습니다.</label>
        <div id="reserve-btn-groups-wrapper">
            <button type="submit" class="btn-primary">예약하기</button>
            <button type="button" class="btn-primary" onclick="history.back()">돌아가기</button>
        </div>
    </form>


</div>
</body>
</html>
