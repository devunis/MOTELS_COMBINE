package controller.member;

import model.member.MemberBean;
import model.member.MemberDAO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/member-update")
public class MemberUpdate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        reqPro(req, resp);
    }

    private void reqPro(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        MemberDAO mdao = new MemberDAO();
        HttpSession session = req.getSession();

        String email = (String) session.getAttribute("email");
        String lastpw = req.getParameter("lastpw");
        String pw = req.getParameter("pw");
        String pw1 = req.getParameter("pw1");
        System.out.println(email);
        System.out.println(lastpw);
        System.out.println(pw);
        System.out.println(pw1);

        if (mdao.hasMember(email,lastpw) && pw.equals(pw1)){
            MemberBean mbean = new MemberBean();
            mbean.setEmail(email);
            mbean.setPw(pw);
            mbean.setName(req.getParameter("name"));
            mbean.setTel(req.getParameter("tel"));
            mbean.setLocation(req.getParameter("location"));
            mdao.updateMember(mbean);

            session.setMaxInactiveInterval(60*30);
            String name = mdao.getMemberName(email);
            System.out.println("name : " + name);
            session.setAttribute("email", email);
            session.setAttribute("name", name);

            RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp?main=/mypage/mypage.jsp");
            dispatcher.forward(req,resp);
        }
        else {
            resp.sendRedirect("Error.jsp");
        }




    }
}
