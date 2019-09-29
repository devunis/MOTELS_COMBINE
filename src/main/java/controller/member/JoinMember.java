package controller.member;

import model.member.MemberBean;
import model.member.MemberDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("JoinMember")
public class JoinMember extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String pwd = req.getParameter("pwd");
        String pwd1 = req.getParameter("pwd1");
        if (!pwd.equals(pwd1)){
            resp.sendRedirect("index.jsp");
        }
        MemberDAO mdao = new MemberDAO();

        MemberBean mbean = new MemberBean();
        mbean.setEmail(req.getParameter("email"));
        mbean.setPwd(pwd);
        mbean.setName(req.getParameter("name"));
        mbean.setTel(req.getParameter("tel"));
        mbean.setLocation(req.getParameter("location"));

        mdao.insertMember(mbean);

        resp.sendRedirect("mypage.jsp");




    }
}
