<%--
  Created by IntelliJ IDEA.
  User: eurob
  Date: 2019-09-29
  Time: ���� 5:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<html>
<head>
    <title>MOTELS COMBINE</title>
</head>
<body>
    <h1>${bean.getName()}�� �ȳ��ϼ���.</h1>
    <table>
        <tr>
            <th>�̸���</th>
            <th>�̸�</th>
            <th>��� ��</th>
            <th>����ó</th>
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
