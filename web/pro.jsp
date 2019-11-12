<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 11. 12.
  Time: 오전 5:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="controller.product.pInfo" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="assets/style/pro.css?ver=1.0" />
</head>
<body>
<div class="container">
    <header class="normal-header">
        <h2 id="motel-search-heading">모텔 검색</h2>
        <p>여러 곳의 모텔을 비교해 보세요!</p>
    </header>
    <%
    request.setCharacterEncoding("UTF-8");
    ArrayList<pInfo> plist = (ArrayList<pInfo> ) request.getAttribute("mlist");
    for (int i=0; i<plist.size(); i++) {
        pInfo p = plist.get(i);
    %>
    <div class="motel-card" data-aos="fade-left">
        <div class="motel-card-header">
            <div class="motel-image"><img src="<%=p.getImg()%>" alt="<%=p.getName()%>"></div>
            <span class="motel-name"><%=p.getName()%></span>
        </div>
        <div class="motel-card-info">
            <div class="motel-info">
                <h3><%=p.getName()%></h3>
                <p><%=p.getInfo()%></p>
            </div>
            <div class="motel-price-reserve">
                <span class="motel-price"><%=p.getPrice()%></span>
                <form action="booking.do" method="post">
                    <input type="hidden" name="checkIn" value="<%=request.getParameter("start")%>">
                    <input type="hidden" name="checkOut" value="<%=request.getParameter("end")%>">
                    <input type="hidden" name="adults" value="<%=request.getParameter("adults")%>">
                    <input type="hidden" name="kids" value="<%=request.getParameter("kids")%>">
                    <input type="hidden" name="rooms" value="<%=request.getParameter("rooms")%>">
                    <input type="hidden" name="img" value="<%=p.getImg()%>">
                    <input type="hidden" name="name" value="<%=p.getName()%>">
                    <input type="hidden" name="info" value="<%=p.getInfo()%>">
                    <input type="hidden" name="price" value="<%=p.getPrice()%>">
                    <button class="btn-primary" type=margin: 10px 0px 0px 10px;"submit">예약하기</button>
                </form>
            </div>
        </div>
    </div>

    <%}%>
    </div>


<jsp:include page="pcon.jsp" />
</body>
</html>
