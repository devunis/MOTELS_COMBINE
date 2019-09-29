<%--
  Created by IntelliJ IDEA.
  User: eurob
  Date: 2019-09-29
  Time: 오후 5:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MOTELS COMBINE</title>
</head>
<body>
    <h1>${bean.getName()}님 안녕하세요.</h1>
    <table>
        <tr>
            <th>이메일</th>
            <th>이름</th>
            <th>사는 곳</th>
            <th>연락처</th>
        </tr>
        <tr>
            <td>${bean.getEmail()}</td>
            <td>${bean.getName()}</td>
            <td>${bean.getLocation()}</td>
            <td>${bean.getTel()}</td>
        </tr>
    </table>

</body>
</html>
