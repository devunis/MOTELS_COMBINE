package controller.member;

import model.member.MemberBean;
import model.member.MemberDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/proc.do")
public class JoinMember extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("EUC-KR");
        reqPro(req, resp);
    }

    private void reqPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("EUC-KR");

        MemberBean mbean = new MemberBean();
        mbean.setEmail(req.getParameter("email"));
        mbean.setPw(req.getParameter("pw"));
        mbean.setName(req.getParameter("name"));
        mbean.setTel(req.getParameter("tel"));
        mbean.setLocation(req.getParameter("location"));
        MemberDAO mdao = new MemberDAO();
        mdao.insertMember(mbean);
        System.out.println(mbean);
        resp.sendRedirect("../index.jsp?"); //상대주소기
    }
}
