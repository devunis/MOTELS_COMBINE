<%--
  Created by IntelliJ IDEA.
  User: min
  Date: 19. 10. 5.
  Time: 오후 5:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <link rel="stylesheet" href="assets/style/main.css?ver=1.0" />
</head>
<body>

    <section id="main-catch">
        <div class="container">
            <h2>좋은 모텔만 모아모아~</h2>
<%--            <img src="assets/image/door.jpg" srcset="assets/image/door@2x.jpg 2x, assets/image/door@3x.jpg 3x" />--%>
        </div>
    </section>


    <div class="container">
        <form action="/psearch" method="post">
            <h3>구경하러가기~</h3>
            <input type="date" name="start">~
            <input type="date" name="end">
            <select name="loc" id="">
                <option value="강남구">강남구</option>
                <option value="강동구">강동구</option>
                <option value="강북구">강북구</option>
                <option value="강서구">강서구</option>
                <option value="관악구">관악구</option>
                <option value="광진구">광진구</option>
                <option value="구로구">구로구</option>
                <option value="금천구">금천구</option>
                <option value="노원구">노원구</option>
                <option value="도봉구">도봉구</option>
                <option value="동대문구">동대문구</option>
                <option value="동작구">동작구</option>
                <option value="마포구">마포구</option>
                <option value="서대문구">서대문구</option>
                <option value="서초구">서초구</option>
                <option value="성동구">성동구</option>
                <option value="성북구">성북구</option>
                <option value="송파구">송파구</option>
                <option value="양천구">양천구</option>
                <option value="영등포구">영등포구</option>
                <option value="용산구">용산구</option>
                <option value="은평구">은평구</option>
                <option value="종로구">종로구</option>
                <option value="중구">중구</option>
                <option value="중랑구">중랑구</option>
            </select>
            성인 : <input type="text" name="adults" placeholder="성인 수">
            아동 : <input type="text" name="kids" placeholder="아동 수">
            객실 : <input type="text" name="rooms" placeholder="객실 수">
            </select>
            <input type="submit" value="검색하기">
        </form>
    </div>
</body>
</html>
