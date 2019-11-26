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
    <title>Title</title>
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
<h1>예약확인</h1>
<h1 style="color: darkred">예약내역이 없습니다.</h1>
<%
    }else{
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
    </tr>


<%
        for (BookingBean bbean : bbeans){
%>
<tr>
    <td><img src="<%=bbean.getImg()%>" alt="" ></td>
    <td><%=bbean.getName()%></td>
    <td><%=bbean.getInfo()%></td>
    <td><%=bbean.getCheckin()%></td>
    <td><%=bbean.getCheckout()%></td>
    <td><%=bbean.getPrice()%></td>
    <td><button onclick="location.href='index.jsp?main=/booking/bookingdetail.jsp?no=<%=bbean.getNo()%>'">상세정보</button></td>
</tr>
<%
        }
    }
%>
</table>
</body>
</html>
