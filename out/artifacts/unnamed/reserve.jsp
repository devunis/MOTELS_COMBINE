<%@ page import="controller.Booking.BookingBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="controller.Booking.BookingDAO" %><%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 11. 18.
  Time: 오전 1:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    BookingBean bean = (BookingBean)request.getAttribute("bean");
%>
<h1>예약확인</h1>
<table>
    <tr>
        <td>이미지</td>
        <td>모텔명</td>
        <td>정보</td>
        <td>체크인</td>
        <td>체크아웃</td>
        <td>가격</td>
        <td>예약자 이름</td>
        <td>전화번호</td>
        <td>결제방식</td>
        <td>픽업여부</td>
    </tr>
    <tr>
        <td><img src="<%=bean.getImg()%>" alt=""></td>
        <td><%=bean.getName()%></td>
        <td><%=bean.getInfo()%></td>
        <td><%=bean.getCheckin()%></td>
        <td><%=bean.getCheckout()%></td>
        <td><%=bean.getPrice()%></td>
        <td>
            <input type="text" placeholder="예약자 이름을 입력해주세요.">
        </td>
        <td>
            <input type="text" placeholder="전화번호를 입력해주세요.">
        </td>
        <td>
            <select name="pay" id="pay">
                <option value="cash">현금</option>
                <option value="card">카드</option>
                <option value="kakaopay">카카오페이</option>
            </select>
        </td>
        <td>
            <select name="pickup" id="pickup">
                <option value="OK">필요합니다.</option>
                <option value="NO">괜찮습니다.</option>
            </select>
        </td>
    </tr>
    <form action="/bookingin" >
        <input type="hidden" name="img" value="<%=bean.getImg()%>">
        <input type="hidden" name="name" value="<%=bean.getName()%>">
        <input type="hidden" name="info" value="<%=bean.getInfo()%>">
        <input type="hidden" name="price" value="<%=bean.getPrice()%>">
        <input type="hidden" name="checkIn" value="<%=bean.getCheckin()%>">
        <input type="hidden" name="checkOut" value="<%=bean.getCheckout()%>">
        <input type="hidden" name="adults" value="<%=bean.getAdults()%>">
        <input type="hidden" name="kids" value="<%=bean.getKids()%>">
        <input type="hidden" name="rooms" value="<%=bean.getRooms()%>">
        <tr>
            <td colspan="4"></td>
            <td colspan="6">
                <input type="checkbox" name="chk_info" >위의 사항을 모두 확인하였습니다.
            </td>
        </tr>
        <tr>
            <td colspan="4"></td>
            <td colspan="6">
                <button type="submit">예약하기</button>
                <button type="button" onclick="history.back()">돌아가기</button>
            </td>
        </tr>
    </form>

</table>

</body>
</html>
