<%--
  Created by IntelliJ IDEA.
  User: eurob
  Date: 2019-09-29
  Time: 오후 5:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <link rel="stylesheet" href="../assets/style/signup.css" />
    <script type="text/javascript">
        function pwdCheck() {
            var pw1 = $('#pw').val();
            var pw2 = $('#pw2').val();
            if (pw1 === pw2){
                $('#checkepassword').html("사용 가능");
                $('#checkepassword').css("color","blue")
            }
            else{
                $('#checkepassword').html("사용 불가");
                $('#checkepassword').css("color","red")
            }

        }
        function memberCheck() {
            var email = $('#email').val();
            $.ajax({
                type: 'POST',
                url: './member-check',
                data: {email:email},
                success: function (result) {
                    if (result == 1){
                        $('#checkemail').html("사용할 수 없는 아이디입니다.");
                        $('#checkemail').css("color","red")
                    }
                    else {
                        $('#checkemail').html("사용할 수 있는 아이디입니다.");
                        $('#checkemail').css("color","blue")

                    }
                }
            });

        }
    </script>
</head>
<body>
    <div class="container">
        <h2>회원가입</h2>
        <div id="signup-form-wrapper">
            <form id="signup-form" action="/proc.do" method="POST">
                <div class="form-item-wrapper">
                    <label for="email">이메일</label>
                    <input type="email" id="email" class="input-bordered" name="email" placeholder="이메일" onkeyup="memberCheck()"/>
                    <div id="checkemail"></div>
                </div>
                <div class="form-item-wrapper">
                    <label for="pw">비밀번호</label>
                    <input type="password" id="pw" class="input-bordered" name="pw" onkeyup="pwdCheck()"/>
                </div>
                <div class="form-item-wrapper">
                    <label for="pw2">비밀번호 중복확인</label>
                    <input type="password" id="pw2" class="input-bordered" name="pw2" onkeyup="pwdCheck()" />
                    <div id="checkepassword"></div>
                </div>
                <div class="form-item-wrapper">
                    <label for="name">닉네임</label>
                    <input type="text" id="name" class="input-bordered" name="name" />
                </div>
                <div class="form-item-wrapper">
                    <label for="tel">연락처</label>
                    <input type="tel" id="tel" class="input-bordered" name="tel" />
                </div>
                <div class="form-item-wrapper">
                    <label for="location">사는 지역</label>
                    <select name="location" id="location" class="input-bordered">
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
                <div class="signup-btn-wrapper">
                    <button type="submit" class="btn-primary">회원가입</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
