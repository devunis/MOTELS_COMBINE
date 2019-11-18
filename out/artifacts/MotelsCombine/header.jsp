<%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 10. 5.
  Time: 오후 5:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <link rel="stylesheet" href="assets/style/header.css" />
</head>
<body>
<!-- Session (진백 DONT TOUCH PLZ)-->
<%
    String email = (String) session.getAttribute("email");
    String name = (String) session.getAttribute("name");
%>
<nav class="container">
    <a href="index.jsp?main=main.jsp">
        <img class="logo" wdith="50" height="50" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJcAAACXCAMAAAAvQTlLAAAAtFBMVEUArvD///8Are8sQWEAo+4ArPAAqu8qP2AAqO/1/P8nRGYApe40SGf4/P5ivfIAs/fk9P3Z7/wtOFYsPFuCyvXR7vxLuvKGz/bq9/04tfG+5vql2vjL6ftUvvKt3/kiOl0AAD8XM1fm6Oukq7cUkcmQ1fd1yvW33/h+iJmOl6Z7jKBZZ35IV3IAEkhre48+UW0AQnANcKIAg7uzucMAJ1DDxs4Ant0nU3kAIU3Z3OAdfK4jZI6j0cq1AAAFd0lEQVR4nO2ba3uiOBSASWpiKINgLTdBHa1iu+12djq2ne78//+1eEGQYFJzyM58yPtlnqoTXkNITs6JlmUwGAwGg8FgMBgMBoPB8OeDCXOcnsMI7qChXs9xKLShHTTJsxghO4hCWIM0uR0XDblBNIGbYZb76ECcMqLekFM1ZKdUvaEdxApQDT+k5y5bcu59K6s3ZCcwMTJGJ/gn7WFMCC0Gn8NoBSteYIySE0VMs9OG4hAi5jS0EBpauLwSo1Y4iFbTzI/telfEfjBOo0GYWOx4u8i62VAMGGN00mwNoRXbOTErn2bDmH+/8vOzdfGoFE8ftkhLQ+m5IfEJhnxzLi66KVrb/DutuFk0SKjT0lAcqnYYmbRdPU2Dz0odGK4jt+XlSHWE0eiy619Ipnoj6VSrV+woerFA3jgEZa9M3vZv8dJ7H32m6EX0jvux6rjH4YUTwmXcKk+sROcA8xPlhYgkGr0iwDrkpNq0AtWncQfm4oCOGKrfxZ0Xm7YtbWACCxiwnlm8geTgPUwxu2rwAkbRu/4Ku9dCK8CzeICuNHgphzg1Lx1P5HGXAEBHsGNPwHv3ULS3UCYHTxMDHVrwga8p1hmrxl4lmmJD5di+xNEU4/eg/aUpNIQt2xbGerSgD2RbYqETVrCBT3NNXsAHkukKWDPY+KJcAqwjoCukrh2RepZpC+YyYM2o2m5H6mUPQF7NVfu+/6Vk9oDQX9fnuEPo8ar67B0nBpoo8KDxzZ9m/ZLZE1p87Z/jb4Rqb86fOa9biBdpThNP/auS2TeUzq/OMPonQF+rP2e8Fyii4KKJ59nxWkUf5N9vznjdvKzQVfUd5g+cl3LWZAsX3P/YVNd6tSdv12e83osJ+aHqzZ8fnBdov81FOe5TebH5o+sn1vfRme7ywnjxreywluGFfIiXw01fH3ux/vzLYrurwa03cvTubWeYj9nhs48L3ks5W7jz8rnmFs/zzfzn5r64VMqw92+b2GjpYVasFB/Pm818M7tvTSVAFkinbYJcvN697jpgW67D7/ydHP3CGO9X1o8fh8/yQCIwp73JA4Rg7C35Dhu9FXFbWw3nhAnggaSiht3etq7ncXNFMeiL14nw/xbk6l5YmC8MnF29sXknR7/2xcieJEEFyBeK78WU7Quhb6N+Xesa773aalV1UvWBzy1DjS+8r9B6y3qHXb8dareykHKt7iUuXOWkLB2/HIdYf7QsS8qyqhdgIRJ+5TgsvWqzWH/plS/KtiyZekAh3Gz7ydELWwexqrcKL0lVYqisJY7us0qr6LGX0agY8lVvFV4Jv1iceilPrM0i/qkXq3lha3l98/5mnbwkTiEA6h1Y5JWeeGHPs7wTLSwpE0K8RN+4nCaq/mn8zcQZUPUdEb8bqhMSLIbeCr3sgeoDiRORVyL1EucQIF6iJ4pJtLCkGufq8XIdqZcl9lLeQQpz0bHciwm91He2Qi9f6oUlXso7Wywqpf1Or2YW4EIvcRSu7kUGgpDTlj+P4nGvyQvlMjFZYKjJKx40F6KGVuvhKv1eyJ4456d8wqQZY11eRYie0HYzQhN5AlSfF4rTxKHk1I0Q5oTrT5wi0Oi1Pb2bhxahtLAr2P5rhZH/qbMNeubVGsN1GuWTMAwneZSOxdFzJ14X1Gpd17Zt96IzIP+LlwLq67ZkRwMDEH8J42go6vGqnjMKJYBKzJ96Xk6y04IByQPoPJAJyOdoqyJvAeTlLEkkDGICKFzpOj2xBZK/FycyQUB+rsD/7qQzALPEFsxXiDohhp7HxJaOg0NBBwcfnXDcbVhhZ3mvi1+oERrmaeZ3coDID6b5hMJPPe7B+19V9aDsfpnVwZFag8FgMBgMBoPBYDAYDAb9/AfnIGwQj8ydLwAAAABJRU5ErkJggg==" />
    </a>

    <ul>
        <% if (email != null ) {%>
        <li class="greeting"><%=name%>님 안녕하세요!</li>
        <li><a href="logout.do">로그아웃</a></li> <!--구현해야됨-->
        <%} else{%>
        <li><a href="index.jsp?main=/user/login.jsp">로그인</a></li>
        <%}%>
        <li><a href="index.jsp?main=main.jsp">HOME</a></li>
        <li><a href="board">후기검색</a></li>
        <li><a href="booking">예약확인</a></li>
        <li><a href="index.jsp?main=/mypage/mypage.jsp">마이페이지</a></li>
    </ul>
    <%
        response.sendRedirect("index.jsp");
    %>
</nav>
</body>
</html>