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
            <div class="content-overlay-dark" data-aos="fade-down" data-aos-duration="900">
                <h2>좋은 모텔만 모아모아~</h2>
                <p>모텔만을 위한 서비스, 모텔스컴바인을 이용해보세요.</p>
                <hr class="devider-white"/>
                <button class="btn-primary align-center" style="margin-top: 20px;" onclick="location.href='#main-search'">모텔 알아보기</button>
            </div>
        </div>
    </section>

    <section id="main-search">
        <div class="container">
            <div class="content-overlay-white" data-aos="fade-down" data-aos-duration="900" data-aos-delay="300">
                <h3>여행 일정이 어떻게 되시나요?</h3>
                <hr class="devider-black mb-1"/>
                <form action="psearch" method="post">
                    <div class="row-wrapper">
                        <label for="start">체크인</label>
                        <input type="date" id="start" name="start">
                        <label for="end">체크아웃</label>
                        <input type="date" id="end" name="end">
                    </div>
                    <hr class="devider-black my-1"/>
                    <div class="col-wrapper">
                        <label for="location">서울 어디에서 묵으실 예정이신가요?</label>
                        <select name="loc" id="location">
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
                    </div>
                    <hr class="devider-black my-1"/>
                    <div class="col-wrapper">
                        <span id="type-label" class="mb-1">투숙 인원과 객실은 어떻게 되시나요?</span>
                        <div class="row-wrapper">
                            <label for="adults">성인 수</label> <input type="number" min="0" id="adults" name="adults" placeholder="성인 수">
                            <label for="kids">아동 수</label> <input type="number" min="0" id="kids" name="kids" placeholder="아동 수">
                            <label for="rooms">객실 수</label> <input type="number" min="0" id="rooms" name="rooms" placeholder="객실 수">
                    </div>
                    <hr class="devider-black mt-1"/>
                    <input id="main-search-btn" class="btn-primary align-right" style="margin-top: 20px;" type="submit" value="검색하기">
                </form>
            </div>
        </div>
    </section>
</body>
</html>
