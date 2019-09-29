package controller;

import model.member.MemberBean;
import model.member.MemberDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/proc.do")
public class JoinMember extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MemberBean mbean = new MemberBean();
        mbean.setNo(1);
        mbean.setEmail(req.getParameter("email"));
        mbean.setPw(req.getParameter("pw"));
        mbean.setName(req.getParameter("name"));
        mbean.setTel(req.getParameter("tel"));
        mbean.setLocation(Integer.parseInt(req.getParameter("location")));
        MemberDAO mdao = new MemberDAO();
        mdao.insertMember(mbean);
        req.setAttribute("bean", mbean);
        RequestDispatcher rd = req.getRequestDispatcher("mypage.jsp");
        rd.forward(req,resp);
    }
}
