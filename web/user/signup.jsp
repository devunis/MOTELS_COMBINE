<%--
  Created by IntelliJ IDEA.
  User: eurob
  Date: 2019-09-29
  Time: ���� 5:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<html>
<head>
    <title>MOTELS COMBINE</title>
    <style>
        label, button {
            display: block;
        }
    </style>
</head>
<body>
    <h1>ȸ������</h1>
    <form action="proc.do" method="post">
        <label for="email">�̸���</label>
        <input type="email" id="email" name="email" placeholder="�̸���" />

        <label for="pw">��й�ȣ</label>
        <input type="password" id="pw" name="pw" />

        <label for="pw2">��й�ȣ �ߺ�Ȯ��</label>
        <input type="password" id="pw2" name="pw2" />

        <label for="name">�г���</label>
        <input type="text" id="name" name="name" />

        <label for="tel">����ó</label>
        <input type="tel" id="tel" name="tel" />

        <label for="location">��� ����</label>
        <select name="location" id="location">
            <option value="1">������</option>
            <option value="2">������</option>
            <option value="3">���ϱ�</option>
            <option value="4">������</option>
            <option value="5">���Ǳ�</option>
            <option value="6">������</option>
            <option value="7">���α�</option>
            <option value="8">��õ��</option>
            <option value="9">�����</option>
            <option value="10">������</option>
            <option value="11">���빮��</option>
            <option value="12">���۱�</option>
            <option value="13">������</option>
            <option value="14">���빮��</option>
            <option value="15">���ʱ�</option>
            <option value="16">������</option>
            <option value="17">���ϱ�</option>
            <option value="18">���ı�</option>
            <option value="19">��õ��</option>
            <option value="20">��������</option>
            <option value="21">��걸</option>
            <option value="22">����</option>
            <option value="23">���α�</option>
            <option value="24">�߱�</option>
            <option value="25">�߶���</option>
        </select>
        <button type="submit">ȸ������</button>
    </form>
</body>
</html>
