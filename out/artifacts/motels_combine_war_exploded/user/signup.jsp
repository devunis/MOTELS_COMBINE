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
    <style>
        label, button {
            display: block;
        }
    </style>
</head>
<body>
    <h1>ȸ������</h1>
    <form action="/user/proc.do" method="post">
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
            <option value="������">������</option>
            <option value="������">������</option>
            <option value="���ϱ�">���ϱ�</option>
            <option value="������">������</option>
            <option value="���Ǳ�">���Ǳ�</option>
            <option value="������">������</option>
            <option value="���α�">���α�</option>
            <option value="��õ��">��õ��</option>
            <option value="�����">�����</option>
            <option value="������">������</option>
            <option value="���빮��">���빮��</option>
            <option value="���۱�">���۱�</option>
            <option value="������">������</option>
            <option value="���빮��">���빮��</option>
            <option value="���ʱ�">���ʱ�</option>
            <option value="������">������</option>
            <option value="���ϱ�">���ϱ�</option>
            <option value="���ı�">���ı�</option>
            <option value="��õ��">��õ��</option>
            <option value="��������">��������</option>
            <option value="��걸">��걸</option>
            <option value="����">����</option>
            <option value="���α�">���α�</option>
            <option value="�߱�">�߱�</option>
            <option value="�߶���">�߶���</option>
        </select>
        <button type="submit">ȸ������</button>
    </form>
</body>
</html>
